'use strict';

class Cafe.Routers.Employeerouter extends Backbone.Router
    routes:
        '': 'home',
        'employees': 'showEmployees',
        'employees/new': 'newEmployee',
        'employees/edit/:id': 'editEmployee',
        'login': 'login',
        'callback': 'callback'