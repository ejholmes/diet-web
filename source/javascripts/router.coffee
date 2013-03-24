#= require lodash
#= require backbone

class @Diet.Router extends Backbone.Router
  routes:
    ''       : 'index'
    'unread' : 'unread'

  index: ->
    app.feeds.fetch(reset: true)
    app.items.fetch(reset: true)

  unread: ->
    app.feeds.fetch(reset: true)
    app.items.fetch(reset: true, data: unread: 1)
