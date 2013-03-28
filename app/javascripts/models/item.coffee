define (require) ->
  Backbone = require 'backbone'

  class Item extends Backbone.Model
    defaults:
      active: false
