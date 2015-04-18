<? 
include('config.php');
echo $config['styleincludes'];
echo $config['javaincludes'];
echo str_replace('|home|','active',$config['menu']);
#######################################################
if($_POST) {
$name=$_POST['name'];
setcookie('name',$name,time()+86400);
?> 
<META HTTP-EQUIV="REFRESH" CONTENT="0;URL=grades.php">  
<? 
exit(); } 
?><style type="text/css">
<!--
#mv{
position:relative;
display: none;
}
#video_overlays, #video_overlays2{
position:absolute;
  z-index:9001; /* Over 9000 */

}
.style1 {color: #FFFFFF;
font-family: Capriola, Helvetica, sans-serif;}
-->
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
var padding= 20*2*6 /* padding from .css * each side *number links */
var lrmargin= 4*6 /* margin from .css *number links */
var links = link1+link2+link3+link4+link5+link6+lrmargin+6 /*+2 offset  */
var linkhvideo = links*(720/1280)
  /*alert(links); */
var vheight = linkhvideo
var tmargin = linkhvideo/1.8

document.getElementById("video_overlays").setAttribute("style","top:"+vheight*.04+"px;left:"+links*.05+"px");
document.getElementById("mv").setAttribute("style","width:"+links+"px; display: block;"); 
document.getElementById("logintable").setAttribute("style","width:"+links*.35+"px;"); 
document.getElementById("logintd").setAttribute("style","opacity:0.85"); 


document.getElementById("image2").setAttribute("style","width:"+links*.5+"px;"); 
document.getElementById("video_overlays2").setAttribute("style","top:"+vheight*.025+"px;left:"+links*.44+"px");
document.getElementById("myVideo").setAttribute("style","width:"+links+"px; height:"+linkhvideo+"px");



}); 
</script>
<script>
/** **/		
$(function(){
var vid = document.getElementById("myVideo");
vid.volume = 0.2;

$("#mv").click(function (evt) {
    var myVideo = document.getElementById('myVideo');
    if (myVideo.muted) {
        myVideo.muted = false; //unmute
    } else {
        myVideo.muted = true; //mute
    }
});
});
</script>

<table border='0' align='center' cellpadding="0" cellspacing="0" class='maintable'>
<tr>
<td valign="top">	
<div id="mv"><div id="video_overlays">
<table width="100%" border="0" cellpadding="3" id='logintable'>
  <tr>
    <td><div align="center"><img width='100%' src="images/urflogo.png"></div><br><br><br></td>
  </tr>
  <tr>
    <td id='logintd' bgcolor="#0c1a25"><div align="center"><span class="style1"><br>Student Login<br><br></span>
    
		<form id="form1" name="form1" method="post" action="">
		<select name="name">
		<option value="none">-Student-</option>
<? 
$tablea = mysql_query("SELECT `name` FROM `champions` ORDER BY `name` ASC");
while($c = mysql_fetch_array($tablea)) {
echo '<option value="'.$c['name'].'">'.$c['name'].'</option>';	
} 	
?> 
		</select>
		<input type="submit" name="Submit" value="Login" />
		</form>
<br>
<a style="text-decoration:none;" target="_blank" href='http://boards.na.leagueoflegends.com/en/c/skin-champion-concepts'><input type="button" value="Enroll At URF" /></a><br><br>
</div>
</td>
</tr>
</table>
</div>
<div id="video_overlays2"><img id='image2' src="images/URFLargegold.png"></div>	 

			<video id="myVideo" autoplay loop HEIGHT="100%" width="100%">
			<source src="urf.mp4" type="video/mp4">
		  	<source src="urf.ogg" type="video/ogg">
			</video>
</div>
</td>
</tr>
</table>