define (require) ->
  Feed = require 'models/feed'

  describe 'Models', ->
    describe 'Feed', ->
      beforeEach ->
        @feed = new Feed
