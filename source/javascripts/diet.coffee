@Diet.App = Ember.Application.create()

@Diet.App.Store = DS.Store.extend
  revision: 12

DS.RESTAdapter.reopen
  url: @Diet.api_base

@Diet.App.Item = DS.Model.extend
  title: DS.attr('string')
  feed: DS.belongsTo('window.App.Subscription')

@Diet.App.Feed = DS.Model.extend
  title: DS.attr('string')
  items: DS.hasMany('window.App.Item')
