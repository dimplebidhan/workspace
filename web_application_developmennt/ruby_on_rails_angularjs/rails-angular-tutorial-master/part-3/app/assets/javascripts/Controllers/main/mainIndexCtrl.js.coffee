@IndexCtrl = ($scope, $location, $http, postData) ->

  $scope.title = "My Blog"
  $scope.data = postData.data

  # Temporarily disable loading posts from the API
  postData.loadPosts()

  $scope.viewPost = (postId) ->
    $location.url('/post/' + postId)
