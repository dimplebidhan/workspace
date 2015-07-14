#= require_self
#= require_tree ./Controllers/main

controllers = angular.module('controllers',[])

receta = angular.module('receta',[
  'templates',
  'ngRoute',
  'controllers',
])

# receta.config([ '$routeProvider',
#   ($routeProvider)->
#     $routeProvider
#       .when('/',
#         templateUrl: "index.html"
#         controller: 'RecipesController'
#       )
# ])

# Sets up Routing.
receta.config(['$routeProvider', ($routeProvider) ->

  # Route for '/order'
  $routeProvider.when('/', { templateUrl: 'index.html', controller: 'RecipesController' } )

  # Default
  # $routeProvider.otherwise({ templateUrl: 'mainIndex.html', controller: 'IndexCtrl' } )

]);

# # Adds meta tag with our CSRF Token to the HTTP Request Header by default everytime
# #  a Request is made enabling basic protection against CSRF Attacks.
receta.config(["$httpProvider", (provider) ->
  provider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]);
