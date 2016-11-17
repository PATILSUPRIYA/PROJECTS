var myapp = angular.module("myapp", []).controller(
		"bookController",
		function($scope, $http) {

			$scope.getBooksList = function() {
				$http.get('http://localhost:8080/springweb/getBooksList').success(function(data) {
							alert ('successfully entered booklist');
							$scope.books = data;
						})
			}
			$scope.addToCart = function(isbn) {
				alert('addToCart');
				$http.put('http://localhost:8080/springweb/cart/add/'+ isbn).success(function() {
					alert('Added Successfully');
				})

			}
		});
