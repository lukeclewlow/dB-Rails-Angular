var dbApp = angular.module('dbApp', ['ngRoute'])

dbApp.config(function($sceDelegateProvider) {
  $sceDelegateProvider.resourceUrlWhitelist([
    'self',
    'https://www.youtube.com/embed/**'
  ]);
});

dbApp.controller('MainCtrl', ['$http', function($http) {
  var self = this;
  self.tunes = [];
  self.genres = [];

  
  $http.get('all_tunes.json').
    then(function(response) {
      self.tunes = response.data;
    }, 
    	function(errResponse) {
      console.error('Error whilst fetching links');
  	}
  );

  $http.get('all_genres.json').
    then(function(response) {
      self.genres = response.data;
    }, 
    	function(errResponse) {
      console.error('Error whilst fetching links');
  	}
  );
}]);