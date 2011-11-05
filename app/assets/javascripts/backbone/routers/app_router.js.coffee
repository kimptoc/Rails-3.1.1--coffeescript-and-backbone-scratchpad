class App.AppRouter extends Backbone.Router
  initialize: ->
    console.log "init router"
    new App.AppView
    new App.AppTemplateView

