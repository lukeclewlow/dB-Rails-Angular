var layoutController = angular.module('layoutController', ['dbApp'])

layoutController.controller('LayoutCtrl', ['$http', 'getGenres', function($http, getGenres) {
  var self = this;
  self.genres = [];

  getGenres.getData()
  	.success(function (genres) {
      self.genres = genres;
    })
    .error(function (error) {
      console.error('Error whilst fetching links') + error.message;
    });
}]);