app = angular.module 'project.api', ['ngResource']

app.factory 'User', ['$resource', ($resource) ->
  $resource 'api/users/:username', username: '@username'
]

app.factory 'Post', ['$resource', ($resource) ->
  $resource 'api/posts/:id', id: '@id'
]

app.factory 'Photo', ['$resource', ($resource) ->
  $source 'api/photos/:id', id: '@id'
]
# query user posts
app.factory 'UserPost', ['$resource', ($resource) ->
  $resource '/api/users/:username/posts/:id'
]

# query post photos
app.factory 'PostPhoto', ['$resource', ($resource) ->
  $resource '/api/posts/:post_id/photos/:id'
]
