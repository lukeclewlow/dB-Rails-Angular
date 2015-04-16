var dbApp = angular.module('dbApp', ['ngRoute', 'tunesControllers', 'layoutController'])

dbApp.config(function($sceDelegateProvider) {
  $sceDelegateProvider.resourceUrlWhitelist([
    'self',
    'https://www.youtube.com/embed/**'
  ]);
});

dbApp.config(function($httpProvider) {
  $httpProvider.defaults.headers.common['X-CSRF-Token'] =
    $('meta[name=csrf-token]').attr('content');
});

dbApp.config(['$routeProvider', function($routeProvider) {
  $routeProvider
    .when('/:genre', {
      templateUrl: "../assets/genreIndex.html",
      controller: 'GenreCtrl'
    })
    .otherwise({
      templateUrl: "../assets/tunesIndex.html",
      controller: 'IndexCtrl'
    });
}]);

dbApp.factory("Tune", function($resource) {
  return $resource("/tunes/:id", { id: "@id" },
    {
      'create':  { method: 'POST' },
      'index':   { method: 'GET', isArray: true },
      'show':    { method: 'GET', isArray: false },
      'update':  { method: 'PUT' },
      'destroy': { method: 'DELETE' }
    }
  );
});