<? 
include('config.php');
###
function curl($url) {
// Initialize cURL
$ch = curl_init();

// Set the website you would like to scrape
#curl_setopt($ch, CURLOPT_URL, "http://whatismyipaddress.com");
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_USERAGENT, '');
curl_setopt($ch, CURLOPT_REFERER, '');

curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false); #for ssl connections
 // Set cURL to return the results into a PHP variable
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

// This executes the cURL request and places the results into a variable.
$curlResults= curl_exec($ch);

// Close curl
curl_close($ch);

// Echo the results to the screen>
return $curlResults;
}

$tablea = mysql_query("SELECT `championId` FROM `z_total`");
while($c = mysql_fetch_array($tablea)) {

$cid=$c['championId'];
$result=curl("https://global.api.pvp.net/api/lol/static-data/na/v1.2/champion/$cid?api_key=$api_key");

preg_match('@"name":"(.*?)",@si',$result,$name);
$full_name=$name[1];
$full_name=mysql_real_escape_string($full_name);
$image=strtolower($full_name);
$ar=array("'",' ','.');
$image=str_replace($ar,'',$image);
if($full_name!=''){
mysql_query("INSERT IGNORE INTO `champions` (`cid`,`name`,`image`) VALUES ('$cid','$full_name','$image');"); # or die(mysql_error());
}
} 