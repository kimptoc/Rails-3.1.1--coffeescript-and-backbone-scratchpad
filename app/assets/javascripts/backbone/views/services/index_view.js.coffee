Mybackbone1.Views.Services ||= {}

class Mybackbone1.Views.Services.IndexView extends Backbone.View
  template: JST["backbone/templates/services/index"]
    
  initialize: () ->
    _.bindAll(this, 'addOne', 'addAll', 'render')
    
    @options.services.bind('reset', @addAll)
   
  addAll: () ->
    @options.services.each(@addOne)
  
  addOne: (service) ->
    view = new Mybackbone1.Views.Services.ServiceView({model : service})
    @$("tbody").append(view.render().el)
       
  render: ->
    $(@el).html(@template(services: @options.services.toJSON() ))
    @addAll()
    
    return this