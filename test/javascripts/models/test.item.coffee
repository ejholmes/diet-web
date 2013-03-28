define (require) ->
  Item = require 'models/item'

  describe 'Models: Item', ->
    describe '.read', ->
      beforeEach ->
        @item = new Item
        @item.url = -> 'foo'
        @item.ajax = sinon.stub()
        @item.read()

      it 'marks the item as read', ->
        expect(@item.get('read')).to.be.true

      it 'marks the item as read on the server', ->
        expect(@item.ajax).to.have.been.calledWith url: 'foo/read', type: 'PUT'
