#= require lodash
#= require backbone

class @Diet.Views.Item extends @Diet.View
  tagName: 'li'
  className: 'item'

  events:
    'click .title' : 'toggle'

  initialize: ->
    @listenTo @model, 'change', @render
    @listenTo @model, 'change:active', @toggleDescription

  render: ->
    @$el.html @template('item', @model.toJSON())
    @$el.toggleClass 'active',  @model.get('active')
    @$el.toggleClass 'read',    @model.get('read')
    @$el.toggleClass 'unread', !@model.get('read')
    @$description = @$('.description')
    this

  toggle: (e) ->
    e.preventDefault()
    @model.collection.toggle(@model)
    @model.read() if @model.get('active')

  toggleDescription: ->
    if @model.get('active')
      #@model.fetch success: =>
        #@$description.html(@model.get('description'))
    else
      @$description.html('')

