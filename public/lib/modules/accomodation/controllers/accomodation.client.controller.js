'use strict';

export var user = angular.module('users.user.controller', []);

user.controller('AccomodationController', ['$scope', '$stateParams', '$http', '$location', 'User', 'Authentication',
	function($scope, $stateParams, $http, $location, User, Authentication) {
		$scope.user = User.get({ id: $stateParams.id });		

		// If user is not signed in then redirect back home
		if (!Authentication.user) $location.path('/');

		$scope.create = function() {
			$http.post('/accomodation', $scope.accomodation).success(function(response) {				
				$location.path('/admin/accomodation');
			}).error(function(response) {
				$scope.error = response.message;
			});
		};

		// Update an accomodation
		$scope.update = function(isValid) {
			if (isValid) {
				$scope.success = $scope.error = null;
				var accomodation = new Accomodation($scope.accomodation);

				accomodation.$update(function(response) {
					$scope.success = true;					
				}, function(response) {
					$scope.error = response.data.message;
				});
			} else {
				$scope.submitted = true;
			}
		};
	}
]);
