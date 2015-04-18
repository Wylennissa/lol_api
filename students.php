<? 
include('config.php');
echo $config['styleincludes'];
echo $config['javaincludes'];
echo str_replace('|students|','active',$config['menu']);
setcookie('name','',time()+86400);
?> 
<table class='maintable' id='setbodywidth' width='1000px' height='50px' border='0' align='center' cellpadding="3" cellspacing="3" bgcolor="#000000">
<tr>
<?
$ar=array();
$tablea = mysql_query("SELECT `name`,`image`,`tier` FROM `champions`");
while($c = mysql_fetch_array($tablea)) {
$image=$c['image'];
$ar[$image]=$c['name'];
$tier[$image]=$c['tier'];
asort($ar);
} 
$l=0; 
$row=0;
foreach($ar as $key => $v){ 
if($l==6){ $l=0; echo '</tr><tr>'; $row++;}
if($row==20){ echo '<td></td>'; $row=0;}
$l++;
?> 
<td width="1%"><a href="grades.php?name=<?=$v?>"><img src="images/composed/<?=$key?>_<?=$tier[$key]?>.png" border="0"></a></td>
<? } ?> 	
</tr>
</table>