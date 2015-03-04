'use strict';

import angular from 'angular';

export var home = angular.module('core.home.controller', []);

home.controller('HomeController', ['$scope', 'Authentication',
	($scope, Authentication) => {
		// This provides Authentication context.
		$scope.authentication = Authentication;
	}
]);