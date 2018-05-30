app.controller("main", function ($scope, $http, $stateParams) {
     $scope.uid = $stateParams.uid;
    $scope.data = [];
    $scope.getData = function () {
        $http.post($scope.serv+"getblog.php").then(function (response) {
            $scope.data = response.data;
        });
    };
    $scope.getData();
    $scope.fDate = function (pdate) {
        const monthNames = ["January", "February", "March", "April", "May", "June",
  "July", "August", "September", "October", "November", "December"];

        var d = new Date(pdate);
        return d.getDate() + "-" + (monthNames[d.getMonth()]) + "-" + d.getFullYear();
    };
});