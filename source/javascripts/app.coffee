#= require env
#= require_tree ./models
#= require_tree ./collections
#= require_tree ./views
#= require_tree ./templates
#= require router

class @Diet.App
  initialize: ->
    @router = new window.Diet.Router

    @feeds = new window.Diet.Collections.Feeds
    @items = new window.Diet.Collections.Items

    @items.feeds = @feeds

    @view = new window.Diet.Views.App(app: this)
    @view.render()

    Backbone.history.start()

@app = new @Diet.App
@app.initialize()
