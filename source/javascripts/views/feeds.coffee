#= require lodash
#= require backbone

class @Diet.Views.Feeds extends @Diet.View
  initialize: ->
    _.bindAll this, 'addOne'
    @listenTo @collection, 'reset', @render

  addOne: (model) ->
    view = new window.Diet.Views.Feed(model: model)
    @$el.append view.render().$el

  render: ->
    @$el.html('')
    _.each @collection.models, @addOne
    this
