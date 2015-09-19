angular.module('carousel').controller('AppSlideShow', function ($scope) {
  $scope.interval = 5000;
  $scope.noWrapSlides = false;
  var slides = $scope.slides = [];
  slides.push({
    image: '//BoltNetwork.png/'
  });
});