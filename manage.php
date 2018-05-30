<?php
$con = new mysqli("localhost", "root", "", "blog");

$array = json_decode(file_get_contents("php://input"));
$array = json_decode( json_encode($array), true);
//print_r($array);
$data = array();
$sql = "SELECT `bid`, `title`, `para`, `udate` FROM `blogs` where `uid`='".$array["uid"]."'";
$x = $con->query($sql); 
if($x->num_rows>0){
    while($row = $x->fetch_assoc()){
        array_push($data, $row);
    }
echo json_encode($data);  
}else{
    echo '{"not":0}';
}
?>