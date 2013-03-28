#= require lodash
#= require backbone

class @Diet.Views.Controls extends @Diet.View
  events:
    'click a.all'           : 'all'
    'click a.unread'        : 'unread'
    'click a.mark-all-read' : 'readAll'

  initialize: ->
    @app = @options.app

  all: (e) ->
    e.preventDefault()
    @navigate '', trigger: true

  unread: (e) ->
    e.preventDefault()
    @navigate 'unread', trigger: true

  readAll: (e) ->
    e.preventDefault()
    @app.items.readAll()

  navigate: ->
    @app.router.navigate.apply @app.router, arguments
