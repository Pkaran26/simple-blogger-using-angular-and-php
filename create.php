<?php
$con = new mysqli("localhost", "root", "", "blog");

$array = json_decode(file_get_contents("php://input"));
$array = json_decode( json_encode($array), true);
//print_r($array);
$sql = "INSERT INTO `blogs`(`title`, `para`, `uid`) VALUES ('".$array["title"]."', '".$array["para"]."', '".$array["uid"]."')";
$x = $con->query($sql); 
if($x==1){
    echo "Success";
}else{
    echo "try again";
}
?>