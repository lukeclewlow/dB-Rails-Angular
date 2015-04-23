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

loginControllers.controller('sessionCtrl', ['Auth', '$scope', '$location',
    function(Auth, $scope) {
      // Check on load if user signed in
      Auth.currentUser().then(function(user) {
        $scope.isAuthenticated = true;
      }, function(error) {
        // Log on console to check out what the error is.
      });

      $scope.$on('devise:login', function(event, currentUser) {
        $scope.isAuthenticated = true;
        // You can get data of current user (getting user's name and etc.)
        console.log(currentUser.inspect);
      });

      $scope.$on('devise:new-session', function(event, currentUser) {
        $scope.isAuthenticated = true;
      });

      $scope.$on('devise:logout', function(event, oldCurrentUser) {
        $scope.isAuthenticated = false;
      });

      $scope.$on('devise:new-registration', function(event, user) {
        $scope.isAuthenticated = true;
      });

      this.logout = function() {
        Auth.logout().then(function(oldUser) {
          alert("Successfully logged out!");
          $location.path("/");
        }, function(error) {
          // An error occurred logging out.
        });
      }
    }
  ]);
