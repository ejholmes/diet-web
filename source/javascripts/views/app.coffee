#= require lodash
#= require backbone

class @Diet.Views.App extends @Diet.View
  el: '#app'

  initialize: ->
    @feeds    = new window.Diet.Views.Feeds(collection: @options.app.feeds)
    @items    = new window.Diet.Views.Items(collection: @options.app.items)
    @controls = new window.Diet.Views.Controls(app: @options.app)

  render: ->
    @$el.html @template('app')
    @feeds.setElement @$('#feeds')
    @items.setElement @$('#items')
    @controls.setElement @$('#controls')
