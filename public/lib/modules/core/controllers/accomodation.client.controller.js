'use strict';

import angular from 'angular';

export var accomodation = angular.module('core.accomodation.controller', []);

accomodation.controller('AccomodationController', ['$scope', 'Authentication',
	($scope, Authentication) => {
		// This provides Authentication context.
		$scope.authentication = Authentication;
	}
]);