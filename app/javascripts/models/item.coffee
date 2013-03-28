define (require) ->
  Base = require 'models/base'

  class Item extends Base
    # Public: Mark this item as read. Also marks the item as read on the
    # server.
    read: ->
      return if @get('read')
      @set('read', true)
      @ajax url: "#{@url()}/read", type: 'PUT'
