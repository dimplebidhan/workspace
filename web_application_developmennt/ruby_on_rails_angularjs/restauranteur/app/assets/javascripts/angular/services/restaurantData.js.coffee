@restauranteur.factory('restaurantData', ['$http', ($http) ->

  restaurantData =
    data:
      restaurants: [{name: 'Loading'}]
    isLoaded: false

  restaurantData.loadRestaurants = (deferred) ->
    if !restaurantData.isLoaded
      $http.get('./restaurants.json').success( (data) ->
        restaurantData.data.restaurants = data
        restaurantData.isLoaded = true
        console.log('Successfully loaded restaurants.')
        if deferred
          deferred.resolve()
      ).error( ->
        console.error('Failed to load restaurants.')
        if deferred
          deferred.resolve()
      )
    else
      if deferred
        deferred.resolve()

  return restaurantData
])
