# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

SlideShow = angular.module('SlideShow' ,[ 
    'templates', 
    'ngRoute', 
    'controllers',
    'ngAnimate',
    'ui.bootstrap'
])

SlideShow.config(['$routeProvider',
    ($routeProvider)->
        $routeProvider
            .when('/portfolio',
                templateUrl: "portfolio.html"
                controller: "PagesController"
            )
            .otherwise(
                redirectTo: "/"
            )
])

controllers = angular.module('controllers', [])
controllers.controller("PagesController", [ '$scope', 
    ($scope)->
        $scope.inter = 5000;
        $scope.noWrapSlides = false;
        slides = $scope.slides = [{
            image: 'BoltNetwork.png'
        },
        {
            image: 'bassMusicMain.png'
        },
        {
            image: 'Bookmarks.png'
        },
        {
            image: 'broadway.png'
        },
        {
            image: 'threadly.png'
        },
        {
            image: 'InnovationCloudMain.png'
        }];

])
