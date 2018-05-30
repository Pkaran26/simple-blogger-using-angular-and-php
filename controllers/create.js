app.controller("create", function ($scope, $http, $stateParams) {
    $scope.uid = $stateParams.uid;
    $scope.create = function (title, para) {
        $http.post($scope.serv+"create.php", { "title": title, "para": para, "uid": $scope.uid }).then(function (response) {
            alert(response.data);
            $scope.clr();
        });
    };
    $scope.clr = function () {
        $scope.title = "";
        $scope.para = "";
    }
});