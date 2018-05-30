app.controller("manage", function ($scope, $http, $stateParams) {
    $scope.uid = $stateParams.uid;
    $scope.data = [];
    $scope.getData = function () {
        $http.post($scope.serv+"manage.php", { "uid": $scope.uid }).then(function (response) {
            $scope.data = response.data;
            //alert(response.data);
        });
    };
    $scope.getData();
    $scope.delP = function(bid){
        $http.post($scope.serv+"delete.php", { "bid": bid }).then(function (response) {
            alert(response.data);
            $scope.getData();
        });
    };
});