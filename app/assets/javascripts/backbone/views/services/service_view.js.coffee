Mybackbone1.Views.Services ||= {}

class Mybackbone1.Views.Services.ServiceView extends Backbone.View
  template: JST["backbone/templates/services/service"]
  
  events:
    "click .destroy" : "destroy"
      
  tagName: "tr"
  
  destroy: () ->
    @model.destroy()
    this.remove()
    
    return false
    
  render: ->
    $(this.el).html(@template(@model.toJSON() ))    
    return this