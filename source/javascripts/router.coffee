#= require lodash
#= require backbone

class @Diet.Router extends Backbone.Router
  routes:
    '' : 'index'

  index: ->
    app = window.app

    app.feeds = new window.Diet.Collections.Feeds
    app.items = new window.Diet.Collections.Items

    app.view = new window.Diet.Views.App
    app.view.render()

    app.feeds.fetch(reset: true)
    app.items.fetch(reset: true)
