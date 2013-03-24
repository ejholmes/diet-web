require [
  'underscore'
  'backbone'
], (_, Backbone) ->
  AppRouter = Backbone.Router.extend
    routes:
      'items': 'items'

    items: ->
      console.log 'foo'

  initialize: ->
    router = new AppRouter
    Backbone.history.start()
