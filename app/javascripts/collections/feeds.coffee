define (require) ->
  Base = require 'collections/base'
  Feed = require 'models/feed'

  class Feeds extends Base
    model: Feed
    url: '/subscriptions'
