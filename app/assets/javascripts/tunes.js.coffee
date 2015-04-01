# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require_self
#= require_tree ./controllers/tunes


dbApp = angular.module('dbApp', ['ngRoute']);

dbApp.config(["$routeProvider", ($routeProvider) ->

	$routeProvider.when('/post', { templateUrl: '../assets/mainPost.html', controller: 'PostCtrl'})
	$routeProvider.otherwise({ templateUrl: '../assets/templates/tunesIndex.html', controller: 'MainCtrl' })
	]);