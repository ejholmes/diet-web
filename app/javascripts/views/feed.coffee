#= require lodash
#= require backbone

class @Diet.Views.Feed extends @Diet.View
  tagName: 'li'
  className: 'feed'

  events:
    'click' : 'show'

  initialize: ->
    @listenTo @model, 'change:active', @renderActive
    @listenTo @model, 'change:unread', @renderUnread

  render: ->
    @$el.html @template('feed', @model.toJSON())
    @$badge = @$('.badge')
    @renderActive()
    @renderUnread()
    this

  renderActive: ->
    @$el.toggleClass('active', @model.get('active'))

  renderUnread: ->
    @$badge.html(@model.get('unread'))
    @$badge.hide() if @model.get('unread') == 0

  show: (e) ->
    e.preventDefault()
    window.app.router.navigate("feed/#{@model.get('id')}", trigger: true)
