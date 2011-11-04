class window.AppRouter extends Backbone.Router
  initialize: ->
    console.log "init router"
    new AppView
    new AppTemplateView

