#= require require
#= require config

require ['chai', 'mocha', 'sinon', 'sinon-chai'], (chai, mocha, sinon, sinonChai) ->

  @expect = chai.expect
  chai.use(sinonChai)

  mocha.setup('bdd')

  require [
    'javascripts/models/test.item.js',
  ], (require) ->
    mocha.run()
