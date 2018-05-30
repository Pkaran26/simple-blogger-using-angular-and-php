<?php
$con = new mysqli("localhost", "root", "", "blog");

$array = json_decode(file_get_contents("php://input"));
$array = json_decode( json_encode($array), true);
//print_r($array);
$sql = "DELETE FROM `blogs` WHERE `bid` = '".$array["bid"]."'";
$x = $con->query($sql); 
if($x==1){
    echo "Deleted";
}else{
    echo "try again".$con->error;
}
?>