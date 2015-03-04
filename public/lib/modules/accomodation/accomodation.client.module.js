'use strict';

import angular from 'angular';

import '../users/services/authentication.client.service';
import '../users/services/users.client.service';
import './services/accomodation.client.service';
import './controllers/accomodations.client.controller';
import './controllers/accomodation.client.controller';

export var accomodation = angular.module('accomodation', [
    'users.auth.service',
    'users.user.service',
    'accomodation.accomodation.service',
    'accomodation.accomodations.controller',
    'accomodation.accomodation.controller'
]);

// Config HTTP Error Handling
accomodation.config(['$httpProvider',
    function($httpProvider) {
        // Set the httpProvider "not authorized" interceptor
        $httpProvider.interceptors.push(['$q', '$location', 'Authentication',
            function($q, $location, Authentication) {
                return {
                    responseError: function(rejection) {
                        switch (rejection.status) {
                            case 401:
                                // Deauthenticate the global user
                                Authentication.user = null;

                                // Redirect to signin page
                                $location.path('signin');
                                break;
                            case 403:
                                // Add unauthorized behaviour
                                break;
                        }

                        return $q.reject(rejection);
                    }
                };
            }
        ]);
    }
]);

// Setting up route
accomodation.config(['$stateProvider',
    function($stateProvider) {
        // Users state routing
        $stateProvider.
        state('accomodations', {
            url: '/accomodations',
            templateUrl: 'lib/modules/accomodation/views/admin/accomodations.client.view.html'
        }).
        state('accomodation', {
            url: '/accomodation/:id',
            templateUrl: 'lib/modules/accomodation/views/admin/accomodation.client.view.html'
        }).
        state('createAccomodation', {
            url: '/accomodation',
            templateUrl: 'lib/modules/accomodation/views/admin/accomodation.client.view.html'
        }).
        state('deleteAccomodation', {
            url: '/accomodation/:id',
            templateUrl: 'lib/modules/accomodation/views/admin/accomodation.client.view.html'
        });
    }
]);
