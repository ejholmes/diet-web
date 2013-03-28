#= require lodash
#= require backbone

class @Diet.Views.Item extends @Diet.View
  tagName: 'li'
  className: 'item'

  events:
    'click .title' : 'toggle'

  initialize: ->
    @listenTo @model, 'change:active', @renderActive
    @listenTo @model, 'change:read', @renderRead

  render: ->
    @$el.html @template('item', @model.toJSON())
    @$description = @$('.description')
    @renderActive()
    @renderRead()
    this

  renderActive: ->
    @$el.toggleClass 'active', @model.get('active')

  renderRead: ->
    @$el.toggleClass 'read',    @model.get('read')
    @$el.toggleClass 'unread', !@model.get('read')

  toggle: (e) ->
    e.preventDefault()
    @model.toggleActive()
    @model.read()
