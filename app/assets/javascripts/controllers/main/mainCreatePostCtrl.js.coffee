@CreatePostCtrl = ($scope, $location, postData) ->

  $scope.data = postData.data
  postData.loadPosts(null)

  $scope.formData =
    newPostTitle: ''
    newPostAuthor: ''
    newPostContents: ''

  $scope.createPost = ->
    if postData.createPost($scope.formData)
      $location.url('/')
    else 
      $location.url('/post/new')  

  $scope.clearPost = ->
    $scope.formData.newPostTitle = ''
    $scope.formData.newPostAuthor = ''
    $scope.formData.newPostContents = ''

  $scope.navNewPost = ->
    $location.url('/post/new')

  $scope.navHome = ->
    $location.url('/')

@CreatePostCtrl.$inject = ['$scope', '$location', 'postData']
