<?
include('config.php');

$options = getopt("p:");
$cid = $options["p"];
if($cid==''){ exit('e'); } 

$tablea = mysql_query("SELECT * FROM `z_total_log` where `done`='0' and `cid`='$cid' limit 1000"); # Takes ~1:30 to get through 1000 
while($c = mysql_fetch_array($tablea)) {

$id=$c['id'];
#$cid=$c['cid'];
$gid=$c['gameId'];
$field=$c['field'];
$new=$c['new'];

$zz= mysql_query("SELECT `total` FROM `position` where `gameId`='$gid'"); 
$z = mysql_fetch_array($zz);
if($z['total']=='1'){ 
$zz= mysql_query("SELECT `$field` FROM `z_total` where `championId`='$cid'"); 
$z = mysql_fetch_array($zz);

$current=$z[$field];
$total=$current+$new;
$time=time();
mysql_query("UPDATE `z_total_log` SET `current`='$current',`total`='$total',`time`='$time',`done`='2' WHERE `id`='$id'") or die(mysql_error());
mysql_query("UPDATE `z_total` SET `$field`='$total' WHERE `championId`='$cid' and `$field`='$current'") or die(mysql_error());
mysql_query("UPDATE `z_total_log` SET `done`='1' WHERE `id`='$id'") or die(mysql_error());
}
} 