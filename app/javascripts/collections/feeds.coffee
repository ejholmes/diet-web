#= require lodash
#= require backbone

class @Diet.Collections.Feeds extends @Diet.Collection
  model: window.Diet.Models.Feed
  url: window.Diet.config.api_endpoint + '/subscriptions'
