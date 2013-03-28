View     = require 'views/base/view'
template = require 'templates/app'

# Site view is a top-level view which is bound to body.
module.exports = class AppView extends View
  container: 'body'
  id: 'site-container'
  regions:
    '#sidebar' : 'sidebar'
    '#main'    : 'main'
  template: template
