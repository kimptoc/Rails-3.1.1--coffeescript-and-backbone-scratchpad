Mybackbone1.Views.Services ||= {}

class Mybackbone1.Views.Services.NewView extends Backbone.View    
  template: JST["backbone/templates/services/new"]
  
  events:
    "submit #new-service": "save"
    
  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )
    
  save: (e) ->
    e.preventDefault()
    e.stopPropagation()
      
    @model.unset("errors")
    
    @collection.create(@model.toJSON(), 
      success: (service) =>
        @model = service
        window.location.hash = "/#{@model.id}"
        
      error: (service, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )
    
  render: ->
    $(this.el).html(@template(@model.toJSON() ))
    
    this.$("form").backboneLink(@model)
    
    return this