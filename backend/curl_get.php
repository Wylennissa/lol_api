<? 
include('config.php');
include('xfunctions.php');

if(api_safe()!=true){ echo 'API Unsafe'; } 

$base='1427865900'; # increase by step of 300 
$val=$base;

while($val<=(time()-2*3600) and api_safe()){ 
$x=mysql_query("Select count(*) from `wu_lock` where `id`='$val' and `valid`='1'");
$xx = mysql_fetch_array($x);
if($xx[0]=='0'){
#
$t=time();
$url="https://na.api.pvp.net/api/lol/na/v4.1/game/ids?beginDate=$val&api_key=$api_key";
#
mysql_query("INSERT INTO `api_calls` (`url`,`date`) VALUES ('$url','$t');") or die(mysql_error());

$img = "C:/xampp/htdocs/lol_urf/wu/$val.txt"; # name and location
$xml = curl($url);

$pos = strpos($xml, 'status');
// Note our use of ===.  Simply == would not work as expected
// because the position of 'a' was the 0th (first) character.
if ($pos === false) {
	$game_found='1'; #Game does exist
} else {
	$game_found='2'; #Game does Not exist
}
if($xml!=''){
if($game_found=='1'){ createFile($img, $xml); }
mysql_query("INSERT IGNORE INTO `wu_lock` (`id`,`valid`) VALUES ('$val','$game_found');") or die(mysql_error());
mysql_query("UPDATE `wu_lock` SET `valid`='$game_found' WHERE `id`='$val'") or die(mysql_error());
}
} #end if $xx[0] 
$val=$val+300;
} #end while 