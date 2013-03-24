#= require lodash
#= require backbone

class @Diet.Views.Feed extends @Diet.View
  tagName: 'li'
  className: 'feed'

  initialize: ->
    @listenTo @model, 'change', @render

  render: ->
    @$el.html @template('feed', @model.toJSON())
    @$el.toggleClass('active', @model.get('active'))
    this
