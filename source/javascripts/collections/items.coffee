#= require lodash
#= require backbone

class @Diet.Collections.Items extends @Diet.Collection
  model: window.Diet.Models.Item
  url: window.Diet.config.api_endpoint + '/items'

  # Public: Mark all items as read.
  readAll: ->
    Backbone.ajax url: "#{@url}/read", type: 'PUT'
