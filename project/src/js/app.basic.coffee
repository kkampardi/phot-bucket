app = angular.module 'project.app.basic', ['project.api']

app.controller 'AppController', ['$scope', 'Post', ($scope, Post) ->
  $scope.posts = Post.query()
]
