app.factory('UserService', function($http) {
	var userService = this;
	var BASE_URL = "http://localhost:8008/project2backend"

	userService.authenticate = function(user) {
		console.log('entering service for login')
		return $http.post(BASE_URL + "/login", user);
	}
	
	userService.registerUser = function(user) {
		console.log('entering service for registration')
		return $http.post(BASE_URL + "/register", user)
	}
	
	userService.logout = function(user) {
		console.log('entering service for registration')
		return $http.put(BASE_URL + "/logout")
	}
	
	userService.getAllUsers=function(){
		console.log('entering getallusers in user service')
		return $http.get(BASE_URL +"/getUsers")
	}
	
	userService.friendRequest=function(username){
		console.log('service --- friendRequest');
		return $http.post(BASE_URL+ '/friendRequest',username);
	}
	
	return userService;
})