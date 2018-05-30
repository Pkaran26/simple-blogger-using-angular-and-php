<?php
$con = new mysqli("localhost", "root", "", "blog");

$array = json_decode(file_get_contents("php://input"));
$array = json_decode( json_encode($array), true);
//print_r($array);
$sql = "SELECT `uid` FROM `users` WHERE `uname`= '".$array["uname"]."' and `upass`= '".$array["upass"]."'";
$x = $con->query($sql); 
if($x->num_rows>0){
    $row = $x->fetch_array();
    echo $row[0];
}else{
    echo "try again";
}
?>