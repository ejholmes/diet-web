Base = require 'models/base/model'

class Item extends Model
  defaults:
    active: false

  get: (attr) ->
    if attr == 'feed'
      @collection.feeds.get @get('feed_id')
    else
      super attr

  # Public: Toggle the active state on this model (also sets all other models
  # in the collection to active=false).
  toggleActive: ->
    active = @get('active')
    _.invoke @collection.models, 'set', 'active', false
    @set('active', !active)

  # Public: Mark this item as read (if it is unread) and decrement the feeds
  # unread count by 1.
  read: ->
    return if @get('read')
    @set('read', true)
    Backbone.ajax
      url: "#{@url()}/read"
      type: 'PUT'
      success: =>
        feed = @get('feed')
        feed.set 'unread', feed.get('unread') - 1
