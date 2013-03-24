#= require lodash
#= require backbone

class @Diet.Views.Controls extends @Diet.View
  events:
    'click a.all'           : 'all'
    'click a.unread'        : 'unread'
    'click a.mark-all-read' : 'readAll'

  all: (e) ->
    e.preventDefault()
    window.app.router.navigate('', trigger: true)

  unread: (e) ->
    e.preventDefault()
    window.app.router.navigate('unread', trigger: true)

  readAll: (e) ->
    e.preventDefault()
    window.app.items.readAll()
