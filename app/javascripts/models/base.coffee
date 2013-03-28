define (require) ->
  Chaplin = require 'chaplin'

  class Model extends Chaplin.Model

    ajax: ->
      Backbone.ajax.apply this, arguments
