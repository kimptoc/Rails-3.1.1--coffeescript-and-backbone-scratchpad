Mybackbone1.Views.Services ||= {}

class Mybackbone1.Views.Services.EditView extends Backbone.View
  template : JST["backbone/templates/services/edit"]
  
  events :
    "submit #edit-service" : "update"
    
  update : (e) ->
    e.preventDefault()
    e.stopPropagation()
    
    @model.save(null,
      success : (service) =>
        @model = service
        window.location.hash = "/#{@model.id}"
    )
    
  render : ->
    $(this.el).html(this.template(@model.toJSON() ))
    
    this.$("form").backboneLink(@model)
    
    return this