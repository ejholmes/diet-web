#= require lodash
#= require backbone

class @Diet.Models.Item extends @Diet.Model
  defaults:
    active: false

  get: (attr) ->
    if attr == 'feed'
      @collection.feeds.get @get('feed_id')
    else
      super attr

  read: ->
    return if @get('read')
    @set('read', true)
    Backbone.ajax
      url: "#{@url()}/read"
      type: 'PUT'
      success: =>
        feed = @get('feed')
        feed.set 'unread', feed.get('unread') - 1
