app.config(function ($stateProvider, $urlRouterProvider) {
    $stateProvider.state("signin", {
        url: "/signin",
        templateUrl: "templates/signin.html",
        controller: "signin"
    })
    .state("signup", {
        url: "/signup",
        templateUrl: "templates/signup.html",
        controller: "signup"
    })
    .state("home", {
        url: "/home",
        templateUrl: "templates/home.html",
        controller: "home"
    })
    .state("home.main", {
        url: "/main/:uid",
        templateUrl: "templates/main.html",
        controller: "main"
    })
    .state("home.create", {
        url: "/create/:uid",
        templateUrl: "templates/create.html",
        controller: "create"
    })
    .state("home.manage", {
        url: "/manage/:uid",
        templateUrl: "templates/manage.html",
        controller: "manage"
    });
    $urlRouterProvider.otherwise("/signin");
});