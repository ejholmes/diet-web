define (require) ->
  Item = require 'models/item'

  describe 'Item', ->
    it 'should set defaults', ->
      item = new Item
      expect(item.defaults.active).to.be.false

    describe '.read', ->
      it 'marks the item as read', ->
        item = new Item
        item.url = -> 'foo'
        item.read()
        expect(item.get('read')).to.be.true
