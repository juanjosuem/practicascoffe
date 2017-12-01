'use strict';

class Cafe.Views.Employee extends Backbone.View

  template: JST['app/scripts/templates/employee.ejs']

  tagName: 'li'

  className: 'media col-md-6 col-lg-4'

  events:
     'click .delete-employee': 'onClickDelete'

  initialize: () ->  
    @listenTo @model, 'remove', @remove

  render: () ->
    console.log 'rendering individual view'
    @$el.html @template(@model.toJSON())
    @
    
  onClickDelete:(e)->
    alert('are you goint to delete some contact')
    console.log('click on link to delete a employee')
    e.preventDefault
    @model.collection.remove(this.model); 
