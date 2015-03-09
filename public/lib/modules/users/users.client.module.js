'use strict';

import angular from 'angular';

import './services/authentication.client.service';
import './services/users.client.service';
import './controllers/authentication.client.controller';
import './controllers/password.client.controller';
import './controllers/settings.client.controller';
import './controllers/users.client.controller';
import './controllers/user.client.controller';

export var users = angular.module('users', [
    'users.auth.service',
    'users.user.service',
    'users.auth.controller',
    'users.password.controller',
    'users.settings.controller',
    'users.users.controller',
    'users.user.controller'
]);

// Config HTTP Error Handling
users.config(['$httpProvider',
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
users.config(['$stateProvider',
    function($stateProvider) {
        // Users state routing
        $stateProvider.
        state('profile', {
            url: '/settings/profile',
            templateUrl: '/lib/modules/users/views/settings/edit-profile.client.view.html'
        }).
        state('password', {
            url: '/settings/password',
            templateUrl: '/lib/modules/users/views/settings/change-password.client.view.html'
        }).
        state('accounts', {
            url: '/settings/accounts',
            templateUrl: '/lib/modules/users/views/settings/social-accounts.client.view.html'
        }).
        state('signup', {
            url: '/signup',
            templateUrl: '/lib/modules/users/views/authentication/signup.client.view.html'
        }).
        state('signin', {
            url: '/signin',
            templateUrl: '/lib/modules/users/views/authentication/signin.client.view.html'
        }).
        state('forgot', {
            url: '/password/forgot',
            templateUrl: '/lib/modules/users/views/password/forgot-password.client.view.html'
        }).
        state('reset-invalid', {
            url: '/password/reset/invalid',
            templateUrl: '/lib/modules/users/views/password/reset-password-invalid.client.view.html'
        }).
        state('reset-success', {
            url: '/password/reset/success',
            templateUrl: '/lib/modules/users/views/password/reset-password-success.client.view.html'
        }).
        state('reset', {
            url: '/password/reset/:token',
            templateUrl: '/lib/modules/users/views/password/reset-password.client.view.html'
        }).
        state('users', {
            url: '/users',
            templateUrl: '/lib/modules/users/views/admin/users.client.view.html'
        }).
        state('user', {
            url: '/user/:id',
            templateUrl: '/lib/modules/users/views/admin/user.client.view.html'
        })
        // state('deleteUser', {
        //     url: '/user/:id',
        //     templateUrl: 'lib/modules/users/views/admin/user.client.view.html'
        // });
    }
]);
