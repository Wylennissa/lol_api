<?php
include('config.php');
###
$z=mysql_query("Select * from `master_list` where `status`='1' and `read`='1' and `position`!='1' limit 50000");
while($zz = mysql_fetch_array($z)){ 
$gid=$zz['gameId'];
mysql_query("INSERT IGNORE INTO `position` (`gameId`) VALUES ('$gid');") or die(mysql_error());
mysql_query("UPDATE `master_list` SET `position`='1' WHERE gameId='$gid'") or die(mysql_error());
} 
#
#Check
#
$z=mysql_query("Select * from `position` where `in1`!='1' or `in2`!='1' or `in3`!='1' or `in4`!='1' or `in5`!='1' or `in6`!='1' or `in7`!='1' or `in8`!='1' or `in9`!='1' or `in10`!='1' or `inteam1`!='1' or `inteam2`!='1' or `instats`!='1'");
while($zz = mysql_fetch_array($z)){ 
$gid=$zz['gameId'];
$inteam1=$zz['inteam1'];
$inteam2=$zz['inteam2'];
$instats=$zz['instats'];
$ii=1;
while($ii<=10){ 
$in[$ii]=$zz['in'.$ii];
$ii++;
}

foreach($in as $key => $v){ #$key is table num
if($v!=1){ 
$x=mysql_query("Select count(*) from `$key` where gameId='$gid' and `participantId`!='0'");
$xx = mysql_fetch_array($x);
if($xx[0]=='1'){ 
$var='in'.$key;
mysql_query("UPDATE `position` SET `$var`='1' WHERE gameId='$gid'") or die(mysql_error());
}
}
}

if($inteam1!='1'){
$x=mysql_query("Select count(*) from `team1_stats` where gameId='$gid' and `firstDragon`!=''");
$xx = mysql_fetch_array($x);
if($xx[0]=='1'){ 
mysql_query("UPDATE `position` SET `inteam1`='1' WHERE gameId='$gid'") or die(mysql_error());
}
}

if($inteam2!='1'){
$x=mysql_query("Select count(*) from `team2_stats` where gameId='$gid' and `firstDragon`!=''");
$xx = mysql_fetch_array($x);
if($xx[0]=='1'){ 
mysql_query("UPDATE `position` SET `inteam2`='1' WHERE gameId='$gid'") or die(mysql_error());
}
}

if($instats!='1'){
$x=mysql_query("Select count(*) from `game_stats` where gameId='$gid' and `participants`!='0'");
$xx = mysql_fetch_array($x);
if($xx[0]=='1'){ 
mysql_query("UPDATE `position` SET `instats`='1' WHERE gameId='$gid'") or die(mysql_error());
}
}
mysql_query("UPDATE `position` SET `looked`='1' WHERE gameId='$gid'") or die(mysql_error());
} #end while fetch

$z=mysql_query("Select * from `position` where `looked`='1' and `good`!='1' and `in1`='1' and `in2`='1' and `in3`='1' and `in4`='1' and `in5`='1' and `in6`='1' and `in7`='1' and `in8`='1' and `in9`='1' and `in10`='1' and `inteam1`='1' and `inteam2`='1' and `instats`='1'");
while($zz = mysql_fetch_array($z)){ 
$gid=$zz['gameId'];
mysql_query("UPDATE `position` SET `good`='1' WHERE gameId='$gid'") or die(mysql_error());
} 

$z=mysql_query("Select * from `position` where `looked`='1' and `good`!='1' and (`in1`!='1' or `in2`!='1' or `in3`!='1' or `in4`!='1' or `in5`!='1' or `in6`!='1' or `in7`!='1' or `in8`!='1' or `in9`!='1' or `in10`!='1' or `inteam1`!='1' or `inteam2`!='1' or `instats`!='1')");
while($zz = mysql_fetch_array($z)){ 
$gid=$zz['gameId'];
mysql_query("UPDATE `master_list` SET `status`='0',`checked`='0',`read`='0',`position`='0' WHERE gameId='$gid'") or die(mysql_error());
mysql_query("DELETE FROM `position` WHERE gameId='$gid'") or die(mysql_error());
}