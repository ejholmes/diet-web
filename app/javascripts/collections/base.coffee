define (require) ->
  Model   = require 'models/base'
  Chaplin = require 'chaplin'

  class Base extends Chaplin.Collection
    model: Model
