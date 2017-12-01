'use strict';

class Cafe.Views.Employees extends Backbone.View

  template: JST['app/scripts/templates/employees.ejs']

  events: {}

  renderOne:(employee)->
    console.log 'rendering',employee
    itemView=new Cafe.Views.Employee({model:employee})
    @$('.contacts-container').append itemView.render().el
  

  initialize: () ->
    console.log 'initialized employess view'
    console.log(this.collection);
    #@listenTo @model, 'change', @render


  render: () ->
    console.log 'redering employess view'
    console.log(this.collection);
    @$el.html @template()
    @collection.each(@renderOne,this)
    @