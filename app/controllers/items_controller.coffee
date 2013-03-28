Controller = require 'controllers/base/controller'
ItemsView  = require 'views/items'
FeedsView  = require 'views/feeds'

module.exports = class HomeController extends Controller
  index: ->
    @views =
      items: new ItemsView(region: 'main')
      feeds: new FeedsView(region: 'sidebar')
