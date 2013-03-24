#= require handlebars
#= require vendor/ember
#= require vendor/ember-data

@Diet =
  api_base: $('meta[name=api-base]').attr('content')

$.ajaxSetup xhrFields: withCredentials: true
