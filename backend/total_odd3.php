<?
include('config.php');


$col=array();
$tablea = mysql_query("SELECT `COLUMN_NAME` 
FROM `INFORMATION_SCHEMA`.`COLUMNS` 
WHERE `TABLE_SCHEMA`='lol_urf' 
    AND `TABLE_NAME`='z_total';");
while($c = mysql_fetch_array($tablea)){ 
if($c[0]!='championId'){ 
array_push($col,$c[0]);
} 
}


$tables=array('1','2','3','4','5','6','7','8','9','10');
$tablea = mysql_query("SELECT `gameId` FROM `position` where `good`='1' and `total`!='1' and `total`!='2' and (gameId % 2) <> 0 and `gameId`>'1787000000' and `gameId`<'1789000000' limit 100"); 
while($c = mysql_fetch_array($tablea)) {
echo $gid=$c['gameId'];
mysql_query("UPDATE `position` SET `total`='2' WHERE `gameId`='$gid'") or die(mysql_error());

foreach($tables as $v){ 
$zz= mysql_query("SELECT * FROM `$v` where `gameId`='$gid'"); 
$z = mysql_fetch_array($zz);

$cid=$z['championId'];
mysql_query("INSERT IGNORE INTO `z_total` (championId) VALUES ('$cid');") or die(mysql_error());
$win=$z['winner']; 
if($win=='true'){ mysql_query("INSERT INTO `z_total_log` (`field`,`new`,`cid`,`gameId`) VALUES ('winner','1','$cid','$gid');") or die(mysql_error()); } 
if($win=='false'){ mysql_query("INSERT INTO `z_total_log` (`field`,`new`,`cid`,`gameId`) VALUES ('loser','1','$cid','$gid');") or die(mysql_error()); } 



foreach($col as $vv){ 
if($vv!='winner' and $vv!='loser'){ 
$$vv=$z[$vv];

$val=$$vv;
if($val=='true'){ $val='1'; }
if($val=='false'){ $val='0'; }
#echo "UPDATE `z_total` SET `$vv`=`$vv`+'$val' WHERE `championId`='$cid'"; echo '<br>'; exit();
#mysql_query("UPDATE `z_total` SET `$vv`=`$vv`+'$val' WHERE `championId`='$cid'") or die(mysql_error());
if($val!='0'){
mysql_query("INSERT INTO `z_total_log` (`field`,`new`,`cid`,`gameId`) VALUES ('$vv','$val','$cid','$gid');") or die(mysql_error());
}
} 
}

}

mysql_query("UPDATE `position` SET `total`='1' WHERE `gameId`='$gid'") or die(mysql_error());
}

