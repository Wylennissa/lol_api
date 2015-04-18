<? 
function api_safe(){
$good='0';
while($good!='1'){ 
#
$api_time=time()-600;
$z=mysql_query("Select count(*) from `api_calls` where `date`>='$api_time'");
$zz = mysql_fetch_array($z);
#
if($zz[0]<=495){ 
#
$api_time=time()-10;
$z=mysql_query("Select count(*) from `api_calls` where `date`>='$api_time'");
$zz = mysql_fetch_array($z);
#
	if($zz[0]<=9){ 
	$good='1';
	}else{ 
	$good='2';
	sleep(1);
	}
}else{ 
$good='2';
sleep(1);
} #end if 475
}
return true;
} # end api_safe 


function createFile($newfile, $text) {
if (!file_exists($newfile)) {

$fp = fopen ($newfile, "wb");
fwrite($fp, $text);
chmod($newfile, 0666);
fclose ($fp);

return;
}
///
if (file_exists($newfile)) {

$fp = fopen ($newfile, "wb");
fwrite($fp, $text);
chmod($newfile, 0666);
fclose ($fp);

return;
}
}


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
#echo $curlResults;
return $curlResults;
}