#= require env
#= require_tree ./models
#= require_tree ./collections
#= require_tree ./views
#= require_tree ./templates
#= require router

class @Diet.App
  initialize: ->
    @router = new window.Diet.Router
    Backbone.history.start()

@app = new @Diet.App
@app.initialize()
