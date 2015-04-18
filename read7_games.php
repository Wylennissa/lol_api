<?php
include('config.php');
###
$file_set='';
$l=0;
$z=mysql_query("Select * from `master_list` where `status`='1' and `read`!='1'");
while($zz = mysql_fetch_array($z)){ 
$gid=$zz['gameId'];

$x=mysql_query("Select count(*) from `lock` where id='$gid'");
$xx = mysql_fetch_array($x);
#
if($xx[0]=='0'){ 
$file_set.="$gid.txt,";
mysql_query("INSERT INTO `lock` (`id`) VALUES ('$gid');") or die(mysql_error());
$l++;
#
if($l>=25){ 
echo $file_set=rtrim($file_set,',');
pclose(popen("start C:/xampp/php/php.exe -q read_slave_7.php -p=$file_set","r"));
#sleep(2);
$file_set='';
$l=0;
}
}
}#end while 
mysql_query("TRUNCATE TABLE `lock`");