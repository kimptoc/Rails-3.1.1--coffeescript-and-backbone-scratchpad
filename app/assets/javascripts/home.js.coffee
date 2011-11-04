# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#alert('??')
#console.log "hello"
class App
  start: ->
    console.log "start app"
    new AppRouter

class AppRouter extends Backbone.Router
  initialize: ->
    console.log "init router"
    new AppView
    new AppTemplateView

class AppView extends Backbone.View
  el: '#app'

  initialize: ->
    console.log "init view"
    @render()

  render: ->
    console.log "render view"
    console.log "view:#{@el}"
    $(@el).html("wowser")
    console.log("post view")
    return @

class AppTemplateView extends Backbone.View
  el: '#app-template-view'

  initialize: ->
    console.log "init app template view"
    @render()

  render: ->
    console.log "render app template view"
#    $(@el).html("wowser")
    console.log("post view")
    return @

jQuery ->
  app = new App()
  app.start()
