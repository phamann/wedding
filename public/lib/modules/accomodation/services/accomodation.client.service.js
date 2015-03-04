'use strict';

export var accomodation = angular.module('accomodation.accomodation.service', []);

// Accomodation service used for communicating with the accomodation REST endpoint
accomodation.factory('Accomodation', ['$resource', function($resource) {
		return $resource('/accomodation/:id', {id: '@id' }, {
			update: {
				method: 'PUT'
			}
		});
	}
]);
