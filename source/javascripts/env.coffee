#= require lodash
#= require backbone

# Override ajax requests to include cookies.
ajax = Backbone.ajax
Backbone.ajax = (request) ->
  request.xhrFields = withCredentials: true
  request.contentType = 'application/json'
  ajax(request)

@Diet =
  # Holds all models, collections and views.
  Models:      { }
  Collections: { }
  Views:       { }
  
  # Base model for all models to extend.
  Model:      Backbone.Model.extend()

  # Base view for all views to extend.
  View:       Backbone.View.extend

    # Public: Render a hamljs view.
    template: (name, context = {}) ->
      window.JST["templates/#{name}"](context)

  # Base collection for all collections to extend.
  Collection: Backbone.Collection.extend()

  # Where config is stored.
  config:
    api_endpoint: $('meta[name=api_endpoint]').attr('content')
