<? 
include('config.php');
$rework='0';
$time=time();
$cache=$time-300; # cache for 5 mins
$tablea = mysql_query("SELECT `cid` FROM `champions`"); # WHERE `date`<'$cache'
while($c = mysql_fetch_array($tablea)) {
$cid=$c['cid'];

$zz = mysql_query("SELECT `winner`,`loser` FROM `z_total` WHERE `championId`='$cid'");
$z = mysql_fetch_array($zz);
$wins=$z['winner'];
$loses=$z['loser'];
$winrate=$wins/($wins+$loses);
mysql_query("UPDATE `champions` SET `winrate`='$winrate',`date`='$time' WHERE `cid`='$cid'"); # or die(mysql_error());
$rework='1';
} 
if($rework=='1'){
$ar=array();
$tablea = mysql_query("SELECT `cid`,`winrate` FROM `champions`");
while($c = mysql_fetch_array($tablea)) {
$cid=$c['cid'];
$winrate=$c['winrate'];
$ar[$cid]=$winrate;
} 
arsort($ar);
echo $num=floor(count($ar)*.20);
$l=1;
foreach($ar as $key => $v){ 
$tier='gold'; 
if($l<=$num*4){ $tier='platinum'; }
if($l<=$num*3){ $tier='diamond'; }
if($l<=$num*2){ $tier='master'; }
if($l<=$num){ $tier='challenger'; }
mysql_query("UPDATE `champions` SET `tier`='$tier' WHERE `cid`='$key'"); # or die(mysql_error());
$l++;
} 
} #end rework 

$tablea = mysql_query("SELECT `cid` FROM `champions`"); #WHERE `date`<'$cache'
while($c = mysql_fetch_array($tablea)) {
$cid=$c['cid'];

$zz = mysql_query("SELECT `winner`,`loser`,`neutralMinionsKilledTeamJungle`,`neutralMinionsKilledEnemyJungle`,`goldEarned`,`magicDamageDealt`,`physicalDamageDealt`,`wardsPlaced`,`totalUnitsHealed`,`totalTimeCrowdControlDealt`,`kills`,`pentaKills`,`assists`,`deaths`,`totalDamageTaken`,`inhibitorKills`,`towerKills`,`minionsKilled` FROM `z_total` WHERE `championId`='$cid'") or die(mysql_error());
$z = mysql_fetch_array($zz);
$gamesp=$z['winner']+$z['loser'];
$games[$cid]=$z['winner']+$z['loser'];
$minions[$cid]=($z['neutralMinionsKilledTeamJungle']+$z['neutralMinionsKilledEnemyJungle'])/$gamesp;
$gold[$cid]=$z['goldEarned']/$gamesp;
$magic[$cid]=$z['magicDamageDealt']/$gamesp;
$physical[$cid]=$z['physicalDamageDealt']/$gamesp;
$wards[$cid]=$z['wardsPlaced']/$gamesp;
$heal[$cid]=$z['totalUnitsHealed']/$gamesp;
$crowd[$cid]=$z['totalTimeCrowdControlDealt']/$gamesp;
#
$killrate[$cid]=$z['kills']/($gamesp*100);
$pentarate[$cid]=$z['pentaKills']/$gamesp;
$assistrate[$cid]=$z['assists']/($gamesp*100);
$goldrate[$cid]=$z['goldEarned']/($gamesp*100000);
$deathrate[$cid]=$z['deaths']/($gamesp*100);
$damagetakenrate[$cid]=$z['totalDamageTaken']/($gamesp*100000);
$towerinhibrate[$cid]=($z['inhibitorKills']+$z['towerKills'])/($gamesp*100);
$minionrate[$cid]=$z['minionsKilled']/($gamesp*1000);
}
$matrix=array('minions','gold','magic','physical','wards','heal','crowd','games');
foreach($matrix as $ar){ 
arsort($$ar);
print_r($$ar);
$l=1;
foreach($$ar as $key => $v){ 
mysql_query("UPDATE `champions` SET `$ar`='$l',`date`='$time' WHERE `cid`='$key'"); # or die(mysql_error());
$l++;
} 
}
$matrix=array('killrate','pentarate','assistrate','goldrate','deathrate','damagetakenrate','towerinhibrate','minionrate');
foreach($matrix as $ar){ 
foreach($$ar as $key => $v){ 
mysql_query("UPDATE `champions` SET `$ar`='$v' WHERE `cid`='$key'"); # or die(mysql_error());
} 
}