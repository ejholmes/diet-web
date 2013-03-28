Chaplin = require 'chaplin'
AppView = require 'views/app'

module.exports = class Controller extends Chaplin.Controller
  beforeAction:
    '.*': ->
      @compose 'site', AppView
