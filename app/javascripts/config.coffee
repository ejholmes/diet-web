require.config
  baseUrl: 'javascripts'

  paths:
    jquery: 'jquery-1.8.0.min'
    sinon: 'sinon-1.6.0'

  map: '*':
    underscore: 'lodash'

  shim:
    backbone:
      deps: ['jquery', 'underscore']
      exports: 'Backbone'
    mocha:
      exports: 'mocha'
    sinon:
      exports: 'sinon'
