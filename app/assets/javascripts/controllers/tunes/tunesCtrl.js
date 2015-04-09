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

  this.add = function() {
    
    var dataObject = {
          artist: self.tune.artist
          ,title: self.tune.title
          ,blog: self.tune.blog
          ,link: self.tune.link
       };

    $http.post('tunes', dataObject)
      .then(function(response) {
          self.tune = {};
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