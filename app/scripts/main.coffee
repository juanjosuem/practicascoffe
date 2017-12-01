'use strict'

window.Cafe =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init:(data) -> 
    console.log 'Init function!'    
    
      

    employees = new Cafe.Collections.Employees(data.employees);

    
    router = new Cafe.Routers.Employeerouter()
    
    router.on
      'route:home': ->
        router.navigate 'employees',{trigger: true, replace: true}       
      'route:showEmployees': ->
        employeesView = new Cafe.Views.Employees(collection: employees)
        $('.main-container').html employeesView.render().el
        
    Backbone.history.start();
    
    return


$ ->
  console.log 'jquery loaded'  
  ###
  
  Cafe.p1=new Cafe.Models.Prueba {'dada':'chan chan'}
  Cafe.theview=new Cafe.Views.Genview({model:Cafe.p1});
  $('body').append(Cafe.theview.render().el);
  ###
  Cafe.init({
          employees: [
            {
              id: 1,
              name : 'Christian Nwamba',
              avatar: '11.svg',
              tel: '651-603-1723',
              email: 'chris@scotch.io'
            },
            {
              id: 2,
              name : 'Bukola Ayodeji',
              avatar: '20.svg',
              tel: '513-307-5859',
              email: 'bukolayodeji@nairabet.com'
            },
            {
              id: 3,
              name : 'Rick Ross',
              avatar: '17.svg',
              tel: '918-774-0199',
              email: 'ross@auth0.com'
            },
            {
              id: 4,
              name : 'Godson Ukpere',
              avatar: '19.svg',
              tel: '702-989-5145',
              email: 'g.ukpe@gigstar.co'
            },
            {
              id: 5,
              name : 'John I. Wilson',
              avatar: '01.svg',
              tel: '318-292-6700',
              email: 'JohnIWilson@dayrep.com'
            },
            {
              id: 6,
              name : 'Goodnes Tejufona',
              avatar: '05.svg',
              tel: '803-557-9815',
              email: 'goodness.teju@kudiai.com'
            }
          ]
  });

 # Cafe.init();




