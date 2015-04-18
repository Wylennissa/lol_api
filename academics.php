<? 
include('config.php');
echo $config['styleincludes'];
echo $config['javaincludes'];
echo str_replace('|academics|','active',$config['menu']);
?> 
<style type="text/css">
.style2 {color: #ffffff;
font-family: Capriola, Helvetica, sans-serif;
font-size:14px;
}
img {
padding-right:30px;
padding-left:30px;
}
</style>
<? 
$ar=array('killrate','pentarate','assistrate','goldrate','deathrate','damagetakenrate','towerinhibrate','minionrate');
foreach($ar as $v){ 
if($v=='deathrate' or $v=='minionrate'){ 
$tablea = mysql_query("SELECT MIN(`$v`) FROM `champions`"); 
} else {
$tablea = mysql_query("SELECT MAX(`$v`) FROM `champions`"); 
}
$c = mysql_fetch_array($tablea);
$val=$c[0];
$tablea = mysql_query("SELECT `image` FROM `champions` WHERE `$v`='$val'");
$c = mysql_fetch_array($tablea);
$image[$v]=$c['image'];
} 
?> 
<table class='maintable' id='setbodywidth' width='1000px' height='50px' border='0' align='center' cellpadding="0" cellspacing="0">
<tr>
<td background="images/academics.jpg">
  <table width="1%" border="0" align="center" cellpadding="3">
    <tr>
      <td valign="top" nowrap="nowrap"><div align="center"><img src="images/composed/<?=$image['killrate']?>_challenger.png">
            <br /><a class="style2" onmouseover="this.innerHTML = 'Most Kills Per Game'" onmouseout="this.innerHTML = 'Most Likely to Succeed'">Most Likely to Succeed</a></div></td>
      <td valign="top" nowrap="nowrap"><div align="center"><img src="images/composed/<?=$image['pentarate']?>_challenger.png">
	  <br /><a class="style2" onmouseover="this.innerHTML = 'Most Penta Kills Per Game'" onmouseout="this.innerHTML = 'Most Likely to be Famous'">Most Likely to be Famous</a></div></td>
      <td valign="top" nowrap="nowrap"><div align="center"><img src="images/composed/<?=$image['assistrate']?>_challenger.png">
	  <br /><a class="style2" onmouseover="this.innerHTML = 'Most Assists Per Game'" onmouseout="this.innerHTML = 'Most Likely to be Runner-Up'">Most Likely to be Runner-Up</a></div></td>
      <td valign="top" nowrap="nowrap"><div align="center"><img src="images/composed/<?=$image['goldrate']?>_challenger.png">
	  <br /><a class="style2" onmouseover="this.innerHTML = 'Most Gold Earned Per Game'" onmouseout="this.innerHTML = 'Most Likely to be Rich'">Most Likely to be Rich</a></div></td>
    </tr>
    <tr>
      <td valign="top" nowrap="nowrap"><div align="center"><img src="images/composed/<?=$image['deathrate']?>_challenger.png">
	  <br /><a class="style2" onmouseover="this.innerHTML = 'Least Deaths Per Game'" onmouseout="this.innerHTML = 'Most Likely to Live Longest'">Most Likely to Live Longest</a></div></td>
      <td valign="top" nowrap="nowrap"><div align="center"><img src="images/composed/<?=$image['damagetakenrate']?>_challenger.png">
	  <br /><a class="style2" onmouseover="this.innerHTML = 'Most Damage Taken Per Game'" onmouseout="this.innerHTML = 'Punching Bag'">Punching Bag</a></div></td>
      <td valign="top" nowrap="nowrap"><div align="center"><img src="images/composed/<?=$image['towerinhibrate']?>_challenger.png">
	  <br /><a class="style2" onmouseover="this.innerHTML = 'Most Tower & Inhibitor <br> Kills Per Game'" onmouseout="this.innerHTML = 'Most Likely to come <br> in like a Wrecking Ball'">Most Likely to come <br> in like a Wrecking Ball</a></div></td>
      <td valign="top" nowrap="nowrap"><div align="center"><img src="images/composed/<?=$image['minionrate']?>_challenger.png">
	  <br /><a class="style2" onmouseover="this.innerHTML = 'Least Minion Kills Per Game'" onmouseout="this.innerHTML = 'Biggest Humanitarian'">Biggest Humanitarian</a></div></td>
    </tr>
  </table></td>
</tr>
</table>