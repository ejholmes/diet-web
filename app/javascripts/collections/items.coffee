define (require) ->
  Base = require 'collections/base'
  Item = require 'models/item'

  class Items extends Base
    model: Item
    url: '/items'

    # Public: Marks all items on the server as read.
    readAll: ->
      @ajax url: "#{@url}/read", type: 'PUT'
