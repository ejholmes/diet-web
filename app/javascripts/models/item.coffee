define (require) ->
  Backbone = require 'backbone'

  class Item extends Backbone.Model
    defaults:
      active: false

    # Public: Mark this item as read. Also marks the item as read on the
    # server.
    read: ->
      return if @get('read')
      @set('read', true)
      Backbone.ajax url: "#{@url()}/read", type: 'PUT'
