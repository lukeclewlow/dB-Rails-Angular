var tunesControllers = angular.module('tunesControllers', [])

tunesControllers.controller('IndexCtrl', ['$http', '$scope', function($http, $scope) {
  var self = $scope;
  self.tunes = [];
  
  $http.get('all_tunes.json').
    then(function(response) {
      self.tunes = response.data;
    }, 
    	function(errResponse) {
      console.error('Error whilst fetching links');
  	}
  );
}]);

tunesControllers.controller('AddTunesCtrl', ['$http', '$scope', function($http, $scope) {
  var self = $scope;

  self.tune = {"artist":"a", "title":"a", "blog":"a", "link":"a"};
  var log = console.log("Loading AddTunesCtrl");

  this.add = function() {
    var dataObject = {
          artist : self.tune.artist
          ,title  : self.tune.title
          ,blog : self.tune.blog
          ,link : self.tune.link
       };
    var log = console.log(self.tune);
    $http(headers: { 'Content-Type': 'application/json' }).post('tunes', dataObject)
      .then(function(response) {
          
      });
  };
}]);

tunesControllers.controller('GenreCtrl', ['$http', '$scope', '$routeParams', function($http, $scope, $routeParams) {
  var self = $scope;
  self.tunes = [];

  self.genre = $routeParams.genre
  var filter = $routeParams.genre
  
  $http.get('/genres/'+ filter + '.json').
    then(function(response) {
      self.tunes = response.data;
    },
      function(errResponse) {
      console.error('Error whilst fetching links');
    }
  );
}]);