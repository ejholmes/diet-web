#= require lodash
#= require backbone

# Override ajax requests to include cookies.
ajax = Backbone.ajax
Backbone.ajax = (request) ->
  request.xhrFields = withCredentials: true
  request.contentType = 'application/json'
  ajax(request)

class Model extends Backbone.Model

class View extends Backbone.View
  # Public: Render a hamljs view.
  template: (name, context = {}) ->
    window.JST["templates/#{name}"](context)

class CollectionView extends View
  initialize: ->
    _.bindAll this, 'addOne'
    @listenTo @collection, 'reset', @render

  addOne: (model) ->
    view = new @childClass(model: model)
    @$fragment.appendChild view.render().$el[0]

  render: ->
    @$fragment = document.createDocumentFragment()
    _.each @collection.models, @addOne
    @$el.html(@$fragment)
    this

class Collection extends Backbone.Collection

@Diet =
  # Holds all models, collections and views.
  Models:      { }
  Collections: { }
  Views:       { }
  
  # Base model for all models to extend.
  Model: Model

  # Base view for all views to extend.
  View: View

  CollectionView: CollectionView

  # Base collection for all collections to extend.
  Collection: Collection

  # Where config is stored.
  config:
    api_endpoint: $('meta[name=api_endpoint]').attr('content')
