'use strict';

export var users = angular.module('users.users.controller', []);

users.controller('UsersController', ['$scope', '$http', '$location', 'User', 'Authentication',
	function($scope, $http, $location, User, Authentication) {
		$scope.user = Authentication.user;

		// If user is not signed in then redirect back home
		if (!$scope.user) $location.path('/');

		$scope.users = User.query();
	}
]);
