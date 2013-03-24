#= require lodash
#= require backbone

class @Diet.Models.Item extends @Diet.Model
  defaults:
    active: false

  read: ->
    return if @get('read')
    @set('read', true)
    Backbone.ajax url: "#{@url()}/read", type: 'PUT'
