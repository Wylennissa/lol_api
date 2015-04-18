<? 
include('config.php');
include('xfunctions.php');

$x=mysql_query("Select * from `master_list` where `checked`!='1'");
while($xx = mysql_fetch_array($x) and api_safe()) {
$gid=$xx['gameId'];

if($gid!='0'){ 
#
$t=time();
$url="https://na.api.pvp.net/api/lol/na/v2.2/match/$gid?api_key=$api_key";
#
mysql_query("INSERT INTO `api_calls` (`url`,`date`) VALUES ('$url','$t');") or die(mysql_error());

$img = "C:/xampp/htdocs/lol_urf/games/$gid.txt"; # name and location
$xml = curl($url);

$pos = strpos($xml, 'Error 404');
// Note our use of ===.  Simply == would not work as expected
// because the position of 'a' was the 0th (first) character.
if ($pos === false) {
	$game_found='1'; #Game does exist
} else {
	$game_found='2'; #Game does Not exist
}
$pos = strpos($xml, 'Error 500');
// Note our use of ===.  Simply == would not work as expected
// because the position of 'a' was the 0th (first) character.
if ($pos === false) {
    #echo "The string '$findme' was not found in the string '$mystring'";
} else {
	$game_found='2'; #Game does Not exist
}

$pos = strpos($xml, 'Rate limit exceeded');
// Note our use of ===.  Simply == would not work as expected
// because the position of 'a' was the 0th (first) character.
if ($pos === false) {
    #echo "The string '$findme' was not found in the string '$mystring'";
} else {
	$game_found='2'; #Game does Not exist
}

if($game_found=='1'){ createFile($img, $xml); 
mysql_query("UPDATE `master_list` SET `status`='$game_found',`checked`='1' WHERE `gameId`='$gid'") or die(mysql_error());
}
} #end if
} #end while 