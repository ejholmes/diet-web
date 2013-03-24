#= require lodash
#= require backbone

class @Diet.Views.Feed extends @Diet.View
  tagName: 'li'
  className: 'feed'

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
