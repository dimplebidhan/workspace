# app/assets/javascripts/angular/controllers/RestaurantIndexCtrl.js.coffee

@RestaurantIndexCtrl = ($scope, $location, $http, restaurantData) ->

  $scope.data = restaurantData.data

  restaurantData.loadRestaurants(null)

@RestaurantIndexCtrl.$inject = ['$scope', '$location', '$http', 'restaurantData']
