(function(){

  describe('Controller: MainCtrl', function () {
    var scope;

    beforeEach(inject(function ($controller, $rootScope) {
      scope = $rootScope.$new();
      $controller('MainCtrl', { $scope: scope });
    }));

    it('populates the scope with Hallo', function () {
      expect(scope.items).toEqual(fakeItems);
    });
  });
})();