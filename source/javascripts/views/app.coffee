#= require lodash
#= require backbone

class @Diet.Views.App extends @Diet.View
  el: '#app'

  initialize: ->
    @feeds = new window.Diet.Views.Feeds(collection: window.app.feeds)

  render: ->
    @$el.html @template('app')
    @feeds.setElement @$('#feeds')
