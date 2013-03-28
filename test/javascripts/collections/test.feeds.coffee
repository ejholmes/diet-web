define (require) ->
  Feeds = require 'collections/feeds'
  Feed  = require 'models/feed'

  describe 'Collections', ->
    describe 'Feeds', ->
      it 'sets .model', ->
        feeds = new Feeds
        expect(feeds.model).to.eq(Feed)

      it 'sets .url', ->
        feeds = new Feeds
        expect(feeds.url).to.eq('/subscriptions')
