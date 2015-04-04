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