describe('Controller: IndexCtrl', function() {
 // Instantiate a new version of my module before each test
 beforeEach(module('tunesControllers'));
 // var ctrl;
 // // Before each unit test, instantiate a new instance
 // // of the controller
 beforeEach(inject(function($controller) {
  ctrl = $controller('IndexCtrl');
 }));
 
 it('should have an empty array on initialisation', function() {
  expect(true).toBe(true);
 });
});