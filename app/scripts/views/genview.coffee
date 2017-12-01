'use strict';

class Cafe.Views.Genview extends Backbone.View

  template: JST['app/scripts/templates/genview.ejs']

  tagName: 'ul'
  className: 'genericview'

  events: {}

  initialize: () ->
    console.log 'INIT: initializing Genview'
    console.log @model
    if @model.get('name') == ''
      @model.set 'name', 'something'
    if @model.get('state') == ''
      @model.set 'state', 'completed'
    @listenTo @model, 'change', @render      

  render: () ->
    console.log 'RENDER VIEW: rendering GenView'
    #console.log @model.toJSON()
    #console.log @model.toJSON()        
    @$el.html @template(@model.toJSON())
    @
