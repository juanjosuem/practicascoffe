# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Employees View', ->
  beforeEach ->
    @EmployeesView = new Cafe.Views.Employees();
