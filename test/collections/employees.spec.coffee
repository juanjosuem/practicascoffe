# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Employees Collection', ->
  beforeEach ->
    @EmployeesCollection = new Cafe.Collections.Employees()
