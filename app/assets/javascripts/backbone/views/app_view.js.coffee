class App.AppView extends Backbone.View
  template : JST["backbone/templates/app"]
  el: '#app'

  initialize: ->
    console.log "init view"
    @render()

  render: ->
    console.log "render view"
    console.log "view:#{@el}"
#    $(@el).html("wowser")
    $(@el).html(@template())
    console.log("post view")
    return @

