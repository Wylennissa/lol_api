<?php
include('config.php');
$student=$_GET['student'];
$tier=$_GET['tier'];

$tablea = mysql_query("SELECT `name`,`tier`,`image` FROM `champions` WHERE `image`='$student'");
$c = mysql_fetch_array($tablea);

$student=$student.'.jpg';
$tier=$tier.'.png';
$s_name=$c['image'].'.png';

$image = imagecreatefromjpeg('images/champs/'.$student);
imagesavealpha($image, true);
imagealphablending($image, true);

$overlay = imagecreatefrompng('images/'.$tier);
imagesavealpha($overlay, true);
imagealphablending($overlay, true);

$name = imagecreatefrompng('images/names/'.$s_name);
imagesavealpha($name, true);
imagealphablending($name, true);

$finalImage = imagecreatetruecolor(160,258);
imagefill($finalImage, 0, 0, IMG_COLOR_TRANSPARENT);
imagesavealpha($finalImage, true);
imagealphablending($finalImage, true);

imagecopy($finalImage, $image, 5, 5, 0, 0, 150,248);
imagecopy($finalImage, $overlay, 0, 0, 0, 0, 160,258);
imagecopy($finalImage, $name, 4, 235, 0, 0, 152,29);

header('Content-type: image/png');
imagepng($finalImage);
?>