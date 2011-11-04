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

class AppView extends Backbone.View
  el: '#app'

  initialize: ->
    console.log "init view"
    @render()

  render: ->
    console.log "render view"
    console.log "view:" + @el
    $(@el).html("wowser")
    console.log("post view")
    return @

init = ->
  app = new App()
  app.start()

$(document).ready init
