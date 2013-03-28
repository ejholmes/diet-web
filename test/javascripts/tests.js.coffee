#= require require
#= require config

require ['chai', 'mocha', 'sinon', 'sinon-chai'], (chai, mocha, sinon, sinonChai) ->

  @expect = chai.expect
  chai.use(sinonChai)

  mocha.setup('bdd')

  require [
    'javascripts/models/test.item.js',
    'javascripts/models/test.feed.js',
    'javascripts/collections/test.items.js',
    'javascripts/collections/test.feeds.js',
  ], (require) ->
    mocha.run()
