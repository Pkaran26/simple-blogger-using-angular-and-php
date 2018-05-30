<?php
$con = new mysqli("localhost", "root", "", "blog");
$data = array();
$sql = "SELECT `bid`, `title`, `para`, `udate` FROM `blogs`";
$x = $con->query($sql); 
if($x->num_rows>0){
    while($row = $x->fetch_assoc()){
        array_push($data, $row);
    }
echo json_encode($data);  
}else{
    echo 0;
}
?>