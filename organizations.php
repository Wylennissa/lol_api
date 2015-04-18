<? 
include('config.php');
echo $config['styleincludes'];
echo $config['javaincludes'];
echo str_replace('|org|','active',$config['menu']);
?> 
<style type="text/css">
#mv{
position:relative;
display: none;
}
#image_overlays, #image_overlays2{
position:absolute;
z-index:9001; /* Over 9000 */
}
</style>
<script src="jquery.min.js" type="text/javascript"></script>
<script>
$(window).load(function(){ 
var link1 = document.getElementById("link1").offsetWidth  
var link2 = document.getElementById("link2").offsetWidth  
var link3 = document.getElementById("link3").offsetWidth  
var link4 = document.getElementById("link4").offsetWidth  
var link5 = document.getElementById("link5").offsetWidth  
var link6 = document.getElementById("link6").offsetWidth  
var lrmargin= 4*6 /* margin from .css *number links */
var links = link1+link2+link3+link4+link5+link6+lrmargin+6 /*+6 offset  */
document.getElementById("mv").setAttribute("style","width:"+links+"px; display: block;"); 
}); 
</script>
<?
$tablea = mysql_query("SELECT `cid`,`image`,`games` FROM `champions` WHERE `games`<'6' or `games`>'119'"); 
while($c = mysql_fetch_array($tablea)){ 
$games=$c['games'];
$image[$games]=$c['image'];
}
$w=100;
$h=161.25;
?>
<table width='1000px' height='50px' border='0' align='center' cellpadding="0" cellspacing="0" class='maintable' id='setbodywidth'>
<tr>
<td>
<div id="mv">
<div id="image_overlays">
<table width="1%" border="0">
  <tr>
    <td><img src="images/composed/<?=$image[1]?>_challenger.png" width="<?=$w?>" height="<?=$h?>"></td>
    <td><img src="images/composed/<?=$image[2]?>_challenger.png" width="<?=$w?>" height="<?=$h?>"></td>
    <td><img src="images/composed/<?=$image[3]?>_challenger.png" width="<?=$w?>" height="<?=$h?>"></td>
    <td><img src="images/composed/<?=$image[4]?>_challenger.png" width="<?=$w?>" height="<?=$h?>"></td>
    <td><img src="images/composed/<?=$image[5]?>_challenger.png" width="<?=$w?>" height="<?=$h?>"></td>
  </tr>
</table>
</div>
<div id="image_overlays2">
<table width="1%" border="0">
  <tr>
    <td><img src="images/composed/<?=$image[120]?>_challenger.png" width="<?=$w?>" height="<?=$h?>"></td>
    <td><img src="images/composed/<?=$image[121]?>_challenger.png" width="<?=$w?>" height="<?=$h?>"></td>
    <td><img src="images/composed/<?=$image[122]?>_challenger.png" width="<?=$w?>" height="<?=$h?>"></td>
    <td><img src="images/composed/<?=$image[123]?>_challenger.png" width="<?=$w?>" height="<?=$h?>"></td>
    <td><img src="images/composed/<?=$image[124]?>_challenger.png" width="<?=$w?>" height="<?=$h?>"></td>
  </tr>
</table>
</div>
<img src="images/StudentOrginizations.jpg" width="100%">
</div>
</td>
</tr>
</table>