class App.AppTemplateView extends Backbone.View
  el: '#app-template-view'

  initialize: ->
    console.log "init app template view"
    @render()

  render: ->
    console.log "render app template view"
    $(@el).html("wowser too")
    console.log("post view")
    return @

