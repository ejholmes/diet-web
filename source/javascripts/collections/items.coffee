#= require lodash
#= require backbone

class @Diet.Collections.Items extends @Diet.Collection
  model: window.Diet.Models.Item
  url: window.Diet.config.api_endpoint + '/items'
