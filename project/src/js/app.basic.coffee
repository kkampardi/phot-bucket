app = angular.module 'project.app.basic', ['project.api']

app.controller 'AppController', ['$scope', 'Post', 'PostPhoto', ($scope, Post, PostPhoto) ->
    $scope.photos = {}
    $scope.posts = Post.query()
    $scope.posts.$promise.then (results) ->
        # Load the photos
        angular.forEach results, (post) ->
            $scope.photos[post.id] = PostPhoto.query(post_id: post.id)
]
