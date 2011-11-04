class Mybackbone1.Models.Service extends Backbone.Model
  paramRoot: 'service'

  defaults:
    name: null
  
class Mybackbone1.Collections.ServicesCollection extends Backbone.Collection
  model: Mybackbone1.Models.Service
  url: '/services'