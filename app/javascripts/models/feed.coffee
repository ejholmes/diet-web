#= require lodash
#= require backbone

class @Diet.Models.Feed extends @Diet.Model
  defaults:
    active: false

  activate: ->
    _.invoke @collection.models, 'set', 'active', false
    @set 'active', true
