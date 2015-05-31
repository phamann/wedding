'use strict';

export var menu = angular.module('users.menu.service', []);

// menus service used for communicating with the menus REST endpoint
menu.factory('FoodMenu', ['$resource', function($resource) {
        return $resource('/menu/:id', {id: '@id' }, {
            get: {
                method: 'GET'
            },
            update: {
                method: 'PUT'
            },
            'delete': {
                method: 'DELETE'
            }
        });
    }
]);
