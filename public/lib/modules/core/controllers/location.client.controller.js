'use strict';

import angular from 'angular';

export var location = angular.module('core.location.controller', []);

location.controller('LocationController', ['$scope', 'Authentication',
	($scope, Authentication) => {
		// This provides Authentication context.
		$scope.authentication = Authentication;
	}
]);