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
         // $scope.resss = JSON.parse(document.getElementById('hdf_Test').value);
          $scope.papers_template =JSON.parse(document.getElementById('hdf_Test').value);
           //$scope.papers_template = [
           //    {
           //        Title: "lala",
           //        Authors: "asas",
           //        Contents: "dsada",
           //        Link:"sadas",
           //    },
           //    {
           //        Title: "lala",
           //        Authors: "asas",
           //        Contents: "dsada",
           //        Link: "sadas",
           //    }
               
           //];

  });

  function DropdownController() {
    var vm = this;

    vm.isCollapsed = true;
    vm.status = {
      isopen: false
    }
  }

}());