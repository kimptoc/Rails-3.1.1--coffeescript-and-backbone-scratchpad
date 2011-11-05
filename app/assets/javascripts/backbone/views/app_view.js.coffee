class App.AppView extends Backbone.View
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

