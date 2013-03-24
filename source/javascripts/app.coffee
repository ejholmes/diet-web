#= require env
#= require_tree ./models
#= require_tree ./collections
#= require_tree ./views
#= require_tree ./templates
#= require router

class @Diet.App
  initialize: ->
    @feeds = new window.Diet.Collections.Feeds
    @items = new window.Diet.Collections.Items

    @items.feeds = @feeds

    @view = new window.Diet.Views.App
    @view.render()

    @router = new window.Diet.Router

    Backbone.history.start()

@app = new @Diet.App
@app.initialize()
