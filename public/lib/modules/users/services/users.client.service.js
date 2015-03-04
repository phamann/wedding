'use strict';

export var user = angular.module('users.user.service', []);

// Users service used for communicating with the users REST endpoint
user.factory('User', ['$resource', function($resource) {
		return $resource('/user/:id', {id: '@id' }, {
			update: {
				method: 'PUT'
			}
		});
	}
]);