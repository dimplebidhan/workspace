# spec/javascripts/controllers_spec.js.coffee

describe "Restauranteur controllers", -&gt;
  beforeEach module("restauranteur")

  describe "RestaurantIndexCtrl", -&gt;
    it "should set restaurants to an empty array", inject(($controller) -&gt;
      scope = {}
      ctrl = $controller("RestaurantIndexCtrl",
        $scope: scope
      )
      expect(scope.restaurants.length).toBe 1
    )
