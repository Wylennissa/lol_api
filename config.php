<? 
$dhost = '64.131.75.119';
$dusername = 'p2yt'; // database user
$dpassword = '106518sm106518'; // database pass
$ddatabase = 'lol_urf'; // database name
$con = mysql_connect($dhost, $dusername, $dpassword) or die('Offline'); 
mysql_select_db($ddatabase, $con);

$logtime=time();
@$ip=$_SERVER['REMOTE_ADDR'];
@$page=$_SERVER['PHP_SELF'];
@$ref=$_SERVER['HTTP_REFERER'];
@$browser=$_SERVER['HTTP_USER_AGENT'];
mysql_query("INSERT INTO lol_urf.new_log_alltraffic (time, ip, page, ref, browser) VALUES('$logtime', '$ip', '$page', '$ref', '$browser')");



$api_key='0e512ca1-d412-4c1f-b3d7-e902b7ca7c18';

$config['menu']="<table id='settablewidth' width='1000px' border='0' align='center'>
<tr>
<td>
<div id='cssmenu'>
<ul>
   <li id='link1' class='|home|'><a href='index.php'><span>Home</span></a></li>
   <li id='link2' class='|about|'><a href='about.php'><span>About URF</span></a></li>
   <li id='link3' class='|featured|'><a href='featured.php'><span>Featured Student</span></a></li>
   <li id='link4' class='|org|'><a href='organizations.php'><span>Student Organizations</span></a></li>
   <li id='link5' class='|students|'><a href='students.php'><span>Students</span></a></li>
   <li id='link6' class='|academics|'><a href='academics.php'><span>Academics</span></a></li>
   
</ul>
</div>
</td>
</tr>
</table>";

$config['javaincludes']='<script src="jquery.min.js" type="text/javascript"></script>
<script>
( function( $ ) {
$( document ).ready(function() {
$(\'#cssmenu\').prepend(\'<div id="bg-one"></div><div id="bg-two"></div><div id="bg-three"></div><div id="bg-four"></div>\');
});
} )( jQuery ); 
$(window).load(function(){ 
var link1 = document.getElementById("link1").offsetWidth  
var link2 = document.getElementById("link2").offsetWidth  
var link3 = document.getElementById("link3").offsetWidth  
var link4 = document.getElementById("link4").offsetWidth  
var link5 = document.getElementById("link5").offsetWidth  
var link6 = document.getElementById("link6").offsetWidth  
var lrmargin= 4*6 /* margin from .css *number links */
var links = link1+link2+link3+link4+link5+link6+lrmargin+6 /*+6 offset  */
var linkh = links*(1100/1700)

/* All pages */
document.getElementById("setbodywidth").setAttribute("style","width:"+links+"px; height:"+linkh+"px; background-size:"+links+"px "+linkh+"px; background-repeat:no-repeat;");
/*  */

/* organizations */
var tmargin = linkh*(0.01);	
var lmargin = links*(0.45);	
var tmargin2 = linkh*(0.50);
var lmargin2 = links*(0.02);
document.getElementById("image_overlays").setAttribute("style","top:"+tmargin+"px; left:"+lmargin+"px");
document.getElementById("image_overlays2").setAttribute("style","top:"+tmargin2+"px; left:"+lmargin2+"px");
/*  */

}); 
</script>'; 
$config['styleincludes']='<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="styles.css">';