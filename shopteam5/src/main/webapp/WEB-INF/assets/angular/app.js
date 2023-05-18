const spaApp = angular.module("spaApp", ["ngRoute"]);
const API_URL = "http://localhost:3000/";
// const API_URL = "http://public-api.domain.com/";

spaApp.controller("getStudentsController",getStudentsController);
spaApp.controller("t",t);
function t($scope, $http){
  
}
spaApp.config(function($routeProvider) {
  $routeProvider
  .when("/", {
    templateUrl : "view/index.html"
  })
  .when("/anime", {
    templateUrl : "view/anime.html"
  })
  .when("/login", {
    templateUrl : "view/login/login.html"
  })
  .when("/register", {
    templateUrl : "view/login/register.html"
  })
  .when("/Forgotpassword", {
    templateUrl : "view/login/Forgotpassword.html"
  })
  .when("/advise", {
    templateUrl : "view/advise/index.html"
  })
});

function getStudentsController($scope, $http){

  // $scope.name="t"
  let _api_list_student = API_URL + 'student';
  $http({
    method: "GET",
    url: _api_list_student
  }).then(
    function successCallback(response) {
      // trường hợp code bị sai, cấu trúc json chưa đúng thì in dòng tiếp theo
      console.log(response.data);
      // trường hợp code bị đúng, cấu trúc json siêu đúng thì in dòng tiếp theo
      $scope.students = response.data;
    },
    function errorCallback(response) {
      // called asynchronously if an error occurs
      // or server returns response with an error status.
    }
  );
}