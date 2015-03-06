'use strict';

import angular from 'angular';
import 'angular-ui-router';
import 'angular-animate';
import 'angular-cookies';
import 'angular-sanitize';
import 'angular-resource';
import 'angular-touch';
import 'angular-bootstrap';
import 'ui-utils';
import './modules/users/users.client.module';
import './modules/accomodation/accomodation.client.module';
import './modules/core/core.client.module';

var appModuleName = 'patrickandgemma';
var appModuleDependencies = [
    'ngResource',
    'ngCookies',
    'ngAnimate',
    'ngTouch',
    'ngSanitize',
    'ui.router',
    'ui.utils',
    'ui.bootstrap',
    'users',
    'core'
];

var app = angular.module(
    appModuleName,
    appModuleDependencies
);

app.config(['$locationProvider',
    // function($locationProvider) {
    //  // Use real URLs (with History API) instead of hashbangs
 //     $locationProvider.html5Mode({enabled: true, requireBase: false});
    // }

    function($locationProvider) {
        $locationProvider.hashPrefix('!');
    }
]);

angular.element(document).ready(() => {
    angular.bootstrap(document, [appModuleName]);
});
