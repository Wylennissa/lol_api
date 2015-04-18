<? 
include('config.php');
$ar=array();
$tablea = mysql_query("SELECT `cid` FROM `champions`"); 
while($c = mysql_fetch_array($tablea)) {
array_push($ar,$c['cid']);
}
shuffle($ar);
$l=0;
foreach($ar as $v){ 
pclose(popen("start C:/xampp/php/php.exe -q total_log.php -p=$v","r"));
$l++;
if($l>='10'){ sleep(120); $l=0; } # takes total_log.php about 1:30 to run
} 