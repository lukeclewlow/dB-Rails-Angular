var layoutController = angular.module('layoutController', [])

layoutController.controller('LayoutCtrl', ['$http', function($http) {
  var self = this;
  self.genres = [];

  $http.get('all_genres.json').
    then(function(response) {
      self.genres = response.data;
    }, 
    	function(errResponse) {
      console.error('Error whilst fetching links');
  	}
  );
}]);