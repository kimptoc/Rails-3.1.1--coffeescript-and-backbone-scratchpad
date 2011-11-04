class Mybackbone1.Routers.ServicesRouter extends Backbone.Router
  initialize: (options) ->
    @services = new Mybackbone1.Collections.ServicesCollection()
    @services.reset options.services

  routes:
    "/new"      : "newService"
    "/index"    : "index"
    "/:id/edit" : "edit"
    "/:id"      : "show"
    ".*"        : "index"

  newService: ->
    @view = new Mybackbone1.Views.Services.NewView(collection: @services)
    $("#services").html(@view.render().el)

  index: ->
    @view = new Mybackbone1.Views.Services.IndexView(services: @services)
    $("#services").html(@view.render().el)

  show: (id) ->
    service = @services.get(id)
    
    @view = new Mybackbone1.Views.Services.ShowView(model: service)
    $("#services").html(@view.render().el)
    
  edit: (id) ->
    service = @services.get(id)

    @view = new Mybackbone1.Views.Services.EditView(model: service)
    $("#services").html(@view.render().el)
  