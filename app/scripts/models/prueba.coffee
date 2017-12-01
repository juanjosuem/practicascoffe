'use strict';

class Cafe.Models.Prueba extends Backbone.Model
  url: '',

  initialize: (data)->
    console.log 'data for initialize'
    console.log data
    @on 'change:id',@changedId
    @on 'change:name',@changedName
    return 

  defaults:
    id:''
    name:''
    state:'uncompleted'

  validate: (attrs, options) ->

  parse: (response, options) ->
    response
  changedId:->
    console.log('Id Changed on Model')
    console.log @
  changedName:->
    console.log 'Name Changed on model'
