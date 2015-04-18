<? 
error_reporting(0);
include('config.php');

function delete_all_between($beginning, $end, $string) {
  $beginningPos = strpos($string, $beginning);
  $endPos = strpos($string, $end);
  if ($beginningPos === false || $endPos === false) {
    return $string;
  }

  $textToDelete = substr($string, $beginningPos, ($endPos + strlen($end)) - $beginningPos);

  return str_replace($textToDelete, '', $string);
}

function servererror($xml){ 
$pos = strpos($xml, 'Error 500');
if ($pos === false) {
    #echo "The string '$findme' was not found in the string '$mystring'";
	return false;
} else {
    #echo "The string '$findme' was found in the string '$mystring'";
    #echo " and exists at position $pos";
	return true;
}
} # end function  


$drive='C';
$driveto='C'; 

#$files=$_GET['files'];
$options = getopt("p:");
$files = $options["p"];


$files_ar=explode(',',$files);
foreach($files_ar as &$file) { 
       
$text = file_get_contents("$drive:/xampp/htdocs/lol_urf/games/".$file);

$fid = str_replace('.txt', '', $file);

if($text=='' or $text=='{"status": {"message": "Rate limit exceeded", "status_code": 429}}' or servererror($text)){ 
mysql_query("UPDATE `master_list` SET `status`='0',`checked`='0',`read`='0' WHERE `gameId`='$fid'") or die(mysql_error());
unlink("$drive:/xampp/htdocs/lol_urf/games/".$file);
}else{

##########################################################
#BREAK INTO SECTIONS######################################
##########################################################

$v1='"participants"';
$gameinfo = substr($text, 0, strpos($text, $v1));

$v2='"participantIdentities"';
$part=strstr($text, $v1);
$part = substr($part, 0, strpos($part, $v2));

$v3='"teams"';
$partid=strstr($text, $v2);
$partid = substr($partid, 0, strpos($partid, $v3));

$teams=strstr($text, $v3);
#
$ar=array(':1}',':2}',':3}',':4}',':5}',':6}',':7}',':8}',':9}',':10}');
foreach($ar as &$v){ 
$pos = strpos($partid, $v);

if ($pos === false) {
    #echo "The string '$findme' was not found in the string '$mystring'";
} else {
    #echo "The string '$findme' was found in the string '$mystring'";
 	$particpant_num=str_replace(':','',$v);
	$particpant_num=str_replace('}','',$particpant_num);
}
} 

##########################################################
#GAME STATS###############################################
##########################################################

$gameinfo = str_replace('{', '', $gameinfo);
$pieces = explode(",", $gameinfo);
$instring='';
foreach ($pieces as &$v) {

if($v!=''){ 
preg_match('@"(.*?)"@si',$v,$name);
$full_name=$name[1];
$full_value=strstr($v, ':');
$full_value=str_replace(':','',$full_value);
$full_value=str_replace('"','',$full_value);

if($full_name=='matchId') {
$full_value = str_replace('{','',$full_value);
mysql_query("INSERT IGNORE INTO game_stats (gameId) VALUES ('$full_value');"); # or die(mysql_error());
$gid=$full_value;
}elseif($full_name!='region'){
$instring.="$full_name='$full_value',";
}
} 
}
$instring.="participants='$particpant_num'";
mysql_query("UPDATE game_stats set $instring where  gameId='$gid'") or die(mysql_error());
$instring='';

##########################################################
#TEAM 1 STATS#############################################
##########################################################

$team1=strstr($teams, '"teamId":100,');
$team1 = substr($team1, 0, strpos($team1, '"teamId":200,'));
$team1 = str_replace('"teamId":100,','',$team1);
$team1 = str_replace('},{','}|{',$team1);
$team1 = str_replace(',"pickTurn"','|"pickTurn"',$team1);

mysql_query("INSERT IGNORE INTO team1_stats (gameId) VALUES ('$gid');"); # or die(mysql_error());
$pieces = explode(",", $team1);

foreach ($pieces as &$v) {
if($v!=''){ 
preg_match('@"(.*?)"@si',$v,$name);
$full_name=$name[1];
$full_value=strstr($v, ':');

if($full_name=='bans'){
$full_value=rtrim($full_value,'|{');
$full_value=str_replace(':[{','[{',$full_value);
}else{
$full_value=str_replace(':','',$full_value);
$full_value=str_replace('"','',$full_value);
} 		
if($full_name!='vilemawKills' and $full_name!='dominionVictoryScore') {
$instring.="$full_name='$full_value',";
}
}
} 
$instring=rtrim($instring, ',');
mysql_query("UPDATE team1_stats set $instring where  gameId='$gid'") or die(mysql_error());
$instring=''; 
 
##########################################################
#TEAM 2 STATS#############################################
##########################################################

$team2=strstr($teams, '"teamId":200,');
$team2 = str_replace('"teamId":200,','',$team2);
$team2 = str_replace('},{','}|{',$team2);
$team2 = str_replace(',"pickTurn"','|"pickTurn"',$team2);

mysql_query("INSERT IGNORE INTO team2_stats (gameId) VALUES ('$gid');"); # or die(mysql_error());
$pieces = explode(",", $team2);

foreach ($pieces as &$v) {
if($v!=''){ 
preg_match('@"(.*?)"@si',$v,$name);
$full_name=$name[1];
$full_value=strstr($v, ':');

if($full_name=='bans'){
$full_value = str_replace(']}]}',']}',$full_value);
$full_value=str_replace(':[{','[{',$full_value);
}else{
$full_value=str_replace(':','',$full_value);
$full_value=str_replace('"','',$full_value);
} 		
if($full_name!='vilemawKills' and $full_name!='dominionVictoryScore') {
$instring.="$full_name='$full_value',";
}
}
} 
$instring=rtrim($instring, ',');
mysql_query("UPDATE team2_stats set $instring where  gameId='$gid'") or die(mysql_error());
$instring=''; #unset($instring); 

##########################################################
#PLAYER STATS#############################################
##########################################################

$part = str_replace('"participants":[{', '', $part);
$part = str_replace('},{"teamId"', '}|split|{"teamId"', $part);
$part = str_replace('"role"', '|end|"role"', $part);
$part = str_replace('"stats":{', '', $part);

$pieces0 = explode('|split|', $part);

$ii=0;
foreach ($pieces0 as &$v) {
$v=str_replace(',"rank"','|"rank"',$v);
$v=str_replace('},{"','}|{',$v);

$v = delete_all_between('"timeline"', '|end|', $v);

$pieces = explode(",", $v);
$ii++;

mysql_query("INSERT IGNORE INTO `$ii` (gameId) VALUES ('$gid');"); # or die(mysql_error());
foreach ($pieces as &$vv) {

if($vv!=''){ 
preg_match('@"(.*?)"@si',$vv,$val);
$full_name=$val[1];
$full_value=strstr($vv, ':');
$full_value=str_replace(':','',$full_value);
$full_value=str_replace('"','',$full_value);
$full_value=str_replace(']','',$full_value);
if($full_name=='lane' or $full_name=='totalTimeCrowdControlDealt') { 
$full_value=str_replace('}','',$full_value);
}

$instring.="$full_name='$full_value',"; 
}
}
$instring=rtrim($instring, ','); 
mysql_query("UPDATE `$ii` set $instring where `gameId`='$gid'") or die(mysql_error());
$instring=''; 
} 

##########################################################
#MARK FINISHED############################################
##########################################################

mysql_query("UPDATE `master_list` set `read`='1' where  gameId='$gid'"); # or die(mysql_error());
copy("$drive:/xampp/htdocs/lol_urf/games/".$file, "$driveto:/xampp/htdocs/lol_urf/games/finished/".$file);
unlink("$drive:/xampp/htdocs/lol_urf/games/".$file);

} #end text!=''		

} #end foreach file 