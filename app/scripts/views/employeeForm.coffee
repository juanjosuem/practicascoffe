'use strict';

class Cafe.Views.EmployeeForm extends Backbone.View

  template: JST['app/scripts/templates/employeeForm.ejs']

  tagName: 'div'

  id: ''

  className: ''

  events: {}

  initialize: () ->
    @listenTo @model, 'change', @render

  render: () ->
    @$el.html @template(@model.toJSON())
