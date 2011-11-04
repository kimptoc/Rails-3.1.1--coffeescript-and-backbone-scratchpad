Mybackbone1.Views.Services ||= {}

class Mybackbone1.Views.Services.ShowView extends Backbone.View
  template: JST["backbone/templates/services/show"]
   
  render: ->
    $(this.el).html(@template(@model.toJSON() ))
    return this