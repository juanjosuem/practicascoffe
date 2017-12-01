# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Employee Model', ->
  beforeEach ->
    @EmployeeModel = new Cafe.Models.Employee();
