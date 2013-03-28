require.config
  baseUrl: 'javascripts'

  paths:
    jquery: 'jquery-1.8.0.min'

  map: '*':
    underscore: 'lodash'

  shim:
    backbone:
      deps: ['jquery', 'underscore']
      exports: 'Backbone'
    mocha:
      exports: 'mocha'
