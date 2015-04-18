<?php
include('config.php');
###
if ($handle = opendir('C:/xampp/htdocs/lol_urf/wu/')) {
    while ((false !== ($file = readdir($handle))))
    {
        if (($file != ".")
         && ($file != "..")
         && ($file != "finished"))
        {

$fid = str_replace('.txt', '', $file);
mysql_query("UPDATE `wu_lock` SET `done`='1' WHERE `id`='$fid'") or die(mysql_error());
$xml=file_get_contents('C:/xampp/htdocs/lol_urf/wu/'.$file);
$xml=str_replace('[','',$xml);
$xml=str_replace(']','',$xml);
$pie=explode(',',$xml);
foreach($pie as &$v){ 
mysql_query("INSERT IGNORE INTO `master_list` (`gameId`) VALUES ('$v');") or die(mysql_error());
}
copy('C:/xampp/htdocs/lol_urf/wu/'.$file, 'C:/xampp/htdocs/lol_urf/wu/finished/'.$file);
unlink('C:/xampp/htdocs/lol_urf/wu/'.$file);
        }
    }

    closedir($handle);
}