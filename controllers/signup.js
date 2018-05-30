app.controller("signup", function ($scope, $http) {
    $scope.submit = function () {
       // if($scope.flg==1){
            $http.post($scope.serv+"signup.php", { "name": $scope.name, "uname": $scope.uname, "dob": $scope.dob, "email": $scope.email, "upass": $scope.upass }).then(function (response) {
                alert(response.data);
                $scope.name = "";
                $scope.uname = "";
                $scope.dob = "";
                $scope.email = "";
                $scope.upass = "";
            });
      /*  }else{
            alert("server is down!");
        }*/
    };
    $scope.checkServerStatus = function(){
        $scope.url = "img/ping.gif";
        var url = $scope.serv+"img/ping.gif";
        var img = new Image();
        img.src = url;
        img.onload = function(){
            $scope.chk = "";
            $scope.url = "";
        }
        img.onerror = function(){
            $scope.chk = "Server is down!";
            $scope.url = "";
        }
    };
    $scope.checkServerStatus();
});