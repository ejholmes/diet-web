View     = require 'views/base/view'

# Site view is a top-level view which is bound to body.
module.exports = class ItemsView extends View
  autoRender: yes
  render: ->
    @$el.html('foo')
