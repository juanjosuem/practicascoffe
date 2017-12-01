# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Employee View', ->
  beforeEach ->
    @EmployeeView = new Cafe.Views.Employee();
