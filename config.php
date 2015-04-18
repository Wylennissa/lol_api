<? 
$dhost = '*REMOVED*'; //usually localhost, or ip
$dusername = '*REMOVED*'; // database user
$dpassword = '*REMOVED*'; // database pass
$ddatabase = 'lol_urf'; // database name
$con = mysql_connect($dhost, $dusername, $dpassword) or die('Offline'); 
mysql_select_db($ddatabase, $con);

$api_key='*REMOVED*';