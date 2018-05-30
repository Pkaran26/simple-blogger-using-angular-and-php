<?php
$con = new mysqli("localhost", "root", "", "blog");

$array = json_decode(file_get_contents("php://input"));
$array = json_decode( json_encode($array), true);
//print_r($array);
$sql = "INSERT INTO `users`(`name`, `uname`, `dob`, `email`, `upass`) VALUES  ('".$array["name"]."', '".$array["uname"]."', '".$array["dob"]."', '".$array["email"]."', '".$array["upass"]."')";
$x = $con->query($sql); 
if($x==1){
    echo "Success";
}else{
    echo "try again";
}

/*"name": $scope.name, "uname": $scope.uname, "dob": $scope.dob, "email": $scope.email, "upass": $scope.upass }).then(function (response) {
            alert(response.data); */
?>