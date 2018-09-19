angular.module('todoApp', [])
  .controller('TodoListController', function($scope) {
    var todoList = this;

    $scope.init = function () {
      $scope.addPhotos = false;
      $scope.addVideos = false;
    }

    $scope.toggleVideos = function () {
      $scope.addVideos = !$scope.addVideos
    }

    $scope.togglePhotos = function () {
      $scope.addPhotos = !$scope.addPhotos
    }


  });