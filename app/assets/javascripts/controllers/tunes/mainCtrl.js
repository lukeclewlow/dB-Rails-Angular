var dbApp = angular.module('dbApp', [])


// dbApp.config(['$routeProvider', ($routeProvider) ->
//   # Route for '/post'
//   $routeProvider.when('/post', { templateUrl: '../assets/tunesPost.html', controller: 'PostCtrl' } )

//   # Default
//   $routeProvider.otherwise({ templateUrl: '../assets/tunesIndex.html', controller: 'IndexCtrl' } )

// ])


dbApp.controller('MainCtrl', ['$http', function($http) {

    this.title = "HALLO";

}]);