<? 
include('config.php');
echo $config['styleincludes'];
echo $config['javaincludes'];
#echo str_replace('|home|','active',$config['menu']);
echo $config['menu'];
#######################################################
if((@$_COOKIE['name']=='' or @$_COOKIE['name']=='none' or @!$_COOKIE['name']) and @$_GET['name']==''){
#error not logged in 
$notloggedin='1';
}
$name=$_COOKIE['name'];
if($name==''){ $name=$_GET['name']; } 
$name=mysql_real_escape_string($name);
$tablea = mysql_query("SELECT * FROM `champions` WHERE `name`='$name'");
while($c = mysql_fetch_array($tablea)) {
#'<option value="'.$c['name'].'">'.$c['name'].'</option>';	
$image=$c['image'];
$x[0]=$c['minions'];
$x[1]=$c['gold'];
$x[2]=$c['magic'];
$x[3]=$c['physical'];
$x[4]=$c['wards'];
$x[5]=$c['heal'];
$x[6]=$c['crowd'];

$disp=array();
$num=8;
foreach($x as $key => $v){ 
if($v<=$num){ $disp[$key]='A+'; }
if($v<=$num*2 and $v>=$num){ $disp[$key]='A'; }
if($v<=$num*3 and $v>=$num*2){ $disp[$key]='A-'; }
if($v<=$num*4 and $v>=$num*3){ $disp[$key]='B+'; }
if($v<=$num*5 and $v>=$num*4){ $disp[$key]='B'; }
if($v<=$num*6 and $v>=$num*5){ $disp[$key]='B-'; }
if($v<=$num*7 and $v>=$num*6){ $disp[$key]='C+'; }
if($v<=$num*8 and $v>=$num*7){ $disp[$key]='C'; }
if($v<=$num*9 and $v>=$num*8){ $disp[$key]='C-'; }
if($v<=$num*10 and $v>=$num*9){ $disp[$key]='D+'; }
if($v<=$num*11 and $v>=$num*10){ $disp[$key]='D'; }
if($v<=$num*12 and $v>=$num*11){ $disp[$key]='D-'; }
if($v<=$num*13 and $v>=$num*12){ $disp[$key]='F+'; }
if($v<=$num*14 and $v>=$num*13){ $disp[$key]='F'; }
if($v<=$num*15 and $v>=$num*14){ $disp[$key]='F-'; }
if($v<=$num*16 and $v>=$num*15){ $disp[$key]='F-'; }
} 
}
?>
<style type="text/css">
.table1 {
background: rgba(255,255,255,0.6);
}
.style2 {color: #000000;
font-family: Capriola, Helvetica, sans-serif;}
</style>
<? 
if(@$notloggedin=='1'){ 
?> 
<table class='maintable' id='setbodywidth2' width='1000px' height='50px' border='0' align='center' cellpadding="0" cellspacing="0">
<tr><td><img src="images/gradespl.jpg" width="100%"></td></tr></table>
<?
}else{
?>
<table class='maintable' id='setbodywidth' width='1000px' height='50px' border='0' align='center' background="images/grades.jpg">
<tr>
<td width='40%' valign="top">
<br>
<br>
<br>
<table width='75%' border="0" align="right" cellpadding="3" cellspacing="10" bgcolor="#FFFFFF" class='table1'>
  <tr>
    <td width="99%" nowrap="nowrap" class="style2">Classes</td>
    <td class="style2">Grade</td>
  </tr>
    <tr>
    <td width="99%" nowrap="nowrap" class="style2"><a onmouseover="this.innerHTML = 'Jungle Minion Kills'" onmouseout="this.innerHTML = 'Animal Studies'">Animal Studies</a></td>
    <td class="style2"><?=$disp[0]?></td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="style2"><a onmouseover="this.innerHTML = 'Gold Earned'" onmouseout="this.innerHTML = 'Economics'">Economics</a>	</td>
    <td class="style2"><?=$disp[1]?></td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="style2"><a onmouseover="this.innerHTML = 'Magic Damage Dealt'" onmouseout="this.innerHTML = 'Occult Studies'">Occult Studies</a>	</td>
    <td class="style2"><?=$disp[2]?></td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="style2"><a onmouseover="this.innerHTML = 'Physical Damage Dealt'" onmouseout="this.innerHTML = 'Physical Education'">Physical Education</a>	</td>
    <td class="style2"><?=$disp[3]?></td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="style2"><a onmouseover="this.innerHTML = 'Wards Placed'" onmouseout="this.innerHTML = 'Geography'">Geography</a>	</td>
    <td class="style2"><?=$disp[4]?></td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="style2"><a onmouseover="this.innerHTML = 'Total Units Healed'" onmouseout="this.innerHTML = 'Pathology'">Pathology</a>	</td>
    <td class="style2"><?=$disp[5]?></td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="style2"><a onmouseover="this.innerHTML = 'Crowd Control Dealt'" onmouseout="this.innerHTML = 'Anaesthesiology'">Anaesthesiology</a>    </td>
    <td class="style2"><?=$disp[6]?></td>
  </tr>
</table></td>
<td valign="top"><br><br><br><div align="left"><img height='100%' src="images/composed/<?=$image?>_challenger.png" /></div></td>
</tr>
<tr>
  <td valign="top"><div align="right"><img width='80%' src="images/urflogo.png"></div></td>
  <td valign="top">&nbsp;</td>
</tr>
</table>
<? } ?> 