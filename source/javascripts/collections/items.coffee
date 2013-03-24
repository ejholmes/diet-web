#= require lodash
#= require backbone

class @Diet.Collections.Items extends @Diet.Collection
  model: window.Diet.Models.Item
  url: window.Diet.config.api_endpoint + '/items'

  # Public: Toggles the active state on the passed in m
  toggle: (model) ->
    active = model.get('active')
    _.invoke @models, 'set', 'active', false
    model.set('active', !active)
