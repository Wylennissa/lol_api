<? 
include('config.php');
echo $config['styleincludes'];
echo $config['javaincludes'];
echo str_replace('|about|','active',$config['menu']);
?> 
<style type="text/css">
#mv{
position:relative;
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
<table width='1000px' height='50px' border='0' align='center' cellpadding="0" cellspacing="0" class='maintable' id='setbodywidth'>
<tr>
<td><div id="mv"><img src="images/AboutURF.jpg" width="100%"></div></td>
</tr>
</table>
