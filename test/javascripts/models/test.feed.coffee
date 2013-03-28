define (require) ->
  Feed = require 'models/feed'

  describe 'Models: Feed', ->
    beforeEach ->
      @feed = new Feed
