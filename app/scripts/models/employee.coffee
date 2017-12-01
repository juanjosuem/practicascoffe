'use strict';

class Cafe.Models.Employee extends Backbone.Model
  url: '',

  initialize: () ->

  defaults:     
    name: null,
    tel: null,
    email: null,
    avatar: null  

  validate: (attrs, options) ->

  parse: (response, options) ->
    response
