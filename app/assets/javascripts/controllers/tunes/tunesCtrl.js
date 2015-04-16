var tunesControllers = angular.module('tunesControllers', ['dbApp'])

tunesControllers.controller('IndexCtrl', ['$http', '$scope', function($http, $scope) {
  var self = $scope;
  self.tunes = [];
  self.mostRecentTune = [];
  self.otherTunes = [];
  
  self.getTunes = $http.get('all_tunes.json').
    then(function(response) {
      self.tunes = response.data;
    }, 
    	function(errResponse) {
      console.error('Error whilst fetching links');
  	}
  ).then(function(){
    self.mostRecentTune = self.tunes.shift();
    self.otherTunes = self.tunes;
  });
}]);

tunesControllers.controller('AddTunesCtrl', ['$http', '$scope', 'getGenres', function($http, $scope, getGenres) {
  var self = $scope;

  self.genres = [];

  getGenres.getData()
    .success(function (genres) {
      self.genres = genres;
    })
    .error(function (error) {
      console.error('Error whilst fetching links') + error.message;
    });

  self.add = function() {

    var dataObject = {
          artist: self.tune.artist
          ,title: self.tune.title
          ,blog: self.tune.blog
          ,link: self.tune.link
          ,genre_id: self.tune.genre_id
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
    });
}]);