'use strict';

export var accomodation = angular.module('accomodation.accomodations.controller', []);

accomodation.controller('AccomodationsController', ['$scope', '$http', '$location', 'User', 'Authentication',
	function($scope, $http, $location, User, Authentication) {
		$scope.user = Authentication.user;

		$scope.accomodation = Accomodation.query();
	}
]);	