require.config
  baseUrl: 'javascripts'

  paths:
    underscore: 'vendor/underscore'
    backbone: 'vendor/backbone'
    templates: 'templates'

@Diet =
  api_base: $('meta[name=api-base]').attr('content')

$.ajaxSetup xhrFields: withCredentials: true
