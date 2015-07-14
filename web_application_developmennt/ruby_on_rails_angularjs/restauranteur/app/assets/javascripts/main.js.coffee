# app/assets/javascripts/main.coffee

# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require_self
#= require_tree ./angular/controllers
#= require_tree ./angular/directives
#= require_tree ./angular/filters
#= require_tree ./angular/services

# Declare and Define Angular Application.
@restauranteur = angular.module('restauranteur', [])

# Routing Directive tells Angular about the default Route for the Application.
@restauranteur.config(['$routeProvider', ($routeProvider) ->
  $routeProvider
  .when('/restaurants', {
      templateUrl: '../assets/restaurants/index.html',
      controller: 'RestaurantIndexCtrl'
      })
  .when('/restaurant/:id', {
      templateUrl: '../assets/restaurants/index.html',
      controller: 'RestaurantIndexCtrl'
      })

  .otherwise({
    templateUrl: '../assets/home.html',
    controller: 'HomeCtrl'
    })
])

@restauranteur.config(["$httpProvider", (provider) ->
  provider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
])
