app.controller("signin", function ($scope, $http, $state) {
    $scope.chk = "Checking Connection...";
    $scope.submit = function () {
       // if($scope.flg==1){
            $http.post($scope.serv+"signin.php", { "uname": $scope.uname, "upass": $scope.upass }).then(function (response) {
                if (Number(response.data) > 0) {
                    $state.go("home.main", {"uid": response.data});
                } else {
                    alert("try again!");
                }
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