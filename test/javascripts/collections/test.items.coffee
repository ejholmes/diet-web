define (require) ->
  Items = require 'collections/items'
  Item  = require 'models/item'

  describe 'Collection: Items', ->
    beforeEach ->
      @items = new Items
      @items.ajax = sinon.stub()

    it 'sets .model', ->
      expect(@items.model).to.eq(Item)

    it 'sets .url', ->
      expect(@items.url).to.eq('/items')

    describe '.readAll', ->
      it 'marks all items as read', ->
        @items.readAll()
        expect(@items.ajax).to.have.been.calledWith url: '/items/read', type: 'PUT'
