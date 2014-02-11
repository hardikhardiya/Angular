@IndexCtrl = ($scope, $location, $http, postData , personalData) ->

  $scope.data = personalData.data

  personalData.loadPersonals(null)  

  $scope.data = postData.data  
  $scope.currentPage = 4
  $scope.maxSize = 5

  postData.loadPosts(null)

  $scope.viewPost = (postId) ->
    $location.url('/post/'+postId)

  $scope.navNewPost = ->
    $location.url('/post/new')  

  $scope.navNewPersonal = ->
    $location.url('/personal/new')    

@IndexCtrl.$inject = ['$scope', '$location', '$http', 'postData' , 'personalData']
