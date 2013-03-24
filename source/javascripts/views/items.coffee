#= require lodash
#= require backbone

class @Diet.Views.Items extends @Diet.View
  initialize: ->
    _.bindAll this, 'addOne'
    @listenTo @collection, 'reset', @render

  addOne: (model) ->
    view = new window.Diet.Views.Item(model: model)
    @$el.append view.render().$el

  render: ->
    @$el.html('')
    _.each @collection.models, @addOne
    this
