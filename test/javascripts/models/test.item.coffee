define (require) ->
  Item = require 'models/item'

  describe 'Item', ->
    it 'should set defaults', ->
      item = new Item
      expect(item.defaults.active).to.be.false
