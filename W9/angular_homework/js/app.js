(function() {

  var app = angular.module('studentYearBookApp', ['ngAnimate']);


  var students = [{
    name: 'Akunor',
    bio: "ffff",
    town: "Meat and veg wrapped in a delicious wheat free tortilla",
    photo: "http://placekitten.com/g/125/125",
    contact: {
      phone: "empty string",
      email: "empty string"
    }
  },
  {
    name: 'Colin',
    bio: "ffff",
    town: "Meat and veg wrapped in a delicious wheat free tortilla",
    photo:"http://placekitten.com/g/125/125",
    contact: "phone"
  },
  {
  name: 'Habib',
  bio: "ffff",
  town: "Meat and veg wrapped in a delicious wheat free tortilla",
  photo:"http://placekitten.com/g/125/125",
  contact: "phone"
    },
  {
  name: 'Sheryar',
  bio: "ffff",
  town: "Meat and veg wrapped in a delicious wheat free tortilla",
  photo:"http://placekitten.com/g/125/125",
  contact: "phone"
  },
  {
  name: 'Kate',
  bio: "ffff",
  town: "Meat and veg wrapped in a delicious wheat free tortilla",
  photo:"http://placekitten.com/g/125/125",
  contact: "phone"
  },
  {
  name: 'Luke',
  bio: "ffff",
  town: "Meat and veg wrapped in a delicious wheat free tortilla",
  photo:"http://placekitten.com/g/125/125",
  contact: "phone"
    },
  {
  name: 'Lee',
  bio: "ffff",
  town: "Meat and veg wrapped in a delicious wheat free tortilla",
  photo:"http://placekitten.com/g/125/125",
  contact: "phone"
  },
  {
  name: 'Abdul',
  bio: "ffff",
  town: "Meat and veg wrapped in a delicious wheat free tortilla",
  photo:"http://placekitten.com/g/125/125",
  contact: "phone"
  },
  {
  name: 'Hisako',
  bio: "ffff",
  town: "Meat and veg wrapped in a delicious wheat free tortilla",
  photo:"http://placekitten.com/g/125/125",
  contact: "phone"
  },
  {
  name: 'Francesco',
  bio: "ffff",
  town: "Meat and veg wrapped in a delicious wheat free tortilla",
  photo:"http://placekitten.com/g/125/125",
  contact: "phone"
  },
  {
  name: 'Emma',
  bio: "ffff",
  town: "Meat and veg wrapped in a delicious wheat free tortilla",
  photo:"http://placekitten.com/g/125/125",
  contact: "phone"
},
{
  name: 'Steph',
  bio: "ffff",
  town: "Meat and veg wrapped in a delicious wheat free tortilla",
  photo:"http://placekitten.com/g/125/125",
  contact: "phone"
},
{
  name: 'Laurence',
  bio: "ffff",
  town: "Meat and veg wrapped in a delicious wheat free tortilla",
  photo:"http://placekitten.com/g/125/125",
  contact: "phone"
}
];



  app.controller('YearBookController', function($scope) {

    $scope.students = students;


    $scope.selectStudent = function(student) {
      $scope.selectedStudent = student;
    };

    $scope.clearSelectedStudent = function() {
      $scope.selectedStudent = false;
    };

    // $scope.basket = 0;

    // $scope.addToBasket = function() {
    //   $scope.basket ++;
    // }

  });


})();