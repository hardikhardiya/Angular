@IndexCtrl = ($scope, $location, $http, postData , personalData) ->

  $scope.data = personalData.data

  personalData.loadPersonals(null)  

  $scope.viewPersonal = (personalId) ->
    $location.url('/personal/'+personalId)  

  $scope.data = postData.data  

  postData.loadPosts(null)

  $scope.viewPost = (postId) ->
    $location.url('/post/'+postId)

  $scope.navNewPost = ->
    $location.url('/post/new')  

  $scope.navNewPersonal = ->
    $location.url('/personal/new')    

@IndexCtrl.$inject = ['$scope', '$location', '$http', 'postData' , 'personalData']
