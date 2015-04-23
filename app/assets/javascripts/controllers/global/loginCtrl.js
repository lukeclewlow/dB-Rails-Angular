var loginControllers = angular.module('loginControllers', ['dbApp'])

loginControllers.controller('LoginCtrl', [
		'$http'
	, '$scope'
	, 'Auth'
	, '$location'
	, function($http, $scope, Auth, $location) {
		this.credentials = { email: '', password: '' };

      this.signIn = function() {
        // Code to use 'angular-devise' component
        Auth.login(this.credentials).then(function(user) {
          $location.path("/");
          alert('Successfully signed in user!')
        }, function(error) {
          console.info('Error in authenticating user!');
          alert('Error in signing in user!');
        });
      }
}]);
