<?php
include('config.php');
$tablea = mysql_query("SELECT `name`,`image` FROM `champions`");
while($c = mysql_fetch_array($tablea)){
$student=$c['name'];
$s_name=$c['image'];
$tier=array('gold','platinum','diamond','master','challenger');
foreach($tier as $tierv){ 
$xml=file_get_contents('http://localhost/lol_urf/web/image_create.php?student='.$s_name.'&tier='.$tierv);
$fp = fopen('images/composed/'.$s_name.'_'.$tierv.'.png', 'w');
fwrite($fp, $xml);
fclose($fp);
}
}