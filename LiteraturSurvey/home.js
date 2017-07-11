(function() {
  'use strict';

  angular
    .module('ui.bootstrap.demo', ['ngAnimate', 'ui.bootstrap']);

  angular
    .module('ui.bootstrap.demo')
      .controller('DropdownController', DropdownController);
  angular
      .module('ui.bootstrap.demo')
      .controller("Papers", function ($scope) {
          debugger;
          $scope.papers_template =JSON.parse(document.getElementById('hdf_Test').value);
  

  });

  function DropdownController() {
    var vm = this;

    vm.isCollapsed = true;
    vm.status = {
      isopen: false
    }
  }

}());