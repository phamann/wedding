'use strict';

import angular from 'angular';
import 'angular-ui-router';
import 'angular-animate';
import 'angular-cookies';
import 'angular-sanitize';
import 'angular-carousel';
import 'angular-resource';
import 'angular-touch';
import 'angular-bootstrap';
import 'angular-flash';
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
    'ngFlash',
    'ui.router',
    'ui.utils',
    'ui.bootstrap',
    'angular-carousel',
    'users',
    'core'
];

var app = angular.module(
    appModuleName,
    appModuleDependencies
);

app.config(['$locationProvider', '$flashProvider',
    // function($locationProvider) {
    // Use real URLs (with History API) instead of hashbangs
    // $locationProvider.html5Mode({enabled: true, requireBase: false});
    // }

    function($locationProvider, $flashProvider){
        $locationProvider.hashPrefix('!');
        $flashProvider.setRouteChangeSuccess('$stateChangeSuccess');
    }
]);

app.run(function($templateCache) {
    $templateCache.put('template/flash-messages.html',
           '<div class="flash-messages">' +
               '<div class="alert alert-{{message.type}}" ng-repeat="message in _flash.messages">' +
                   '<button type="button" ng-click="message.remove()" class="close" data-dismiss="alert" aria-label="Close">' +
                       '<span aria-hidden="true">&times;</span></button>' +
                   '<span class="flash-content" ng-bind-html="message.message"></span>' +
               '</div>' +
               '</div>');
});

angular.element(document).ready(() => {
    angular.bootstrap(document, [appModuleName]);
});
