'use strict';

import angular from 'angular';

import './controllers/header.client.controller';
import './controllers/home.client.controller';
import './controllers/location.client.controller';
import './controllers/accomodation.client.controller';
import './controllers/gettinghere.client.controller';

import homeTmpl from 'lib/modules/core/views/home.client.view.html!text';
import locationTmpl from 'lib/modules/core/views/location.client.view.html!text';
import accomodationTmpl from 'lib/modules/core/views/accomodation.client.view.html!text';
import gettingHereTmpl from 'lib/modules/core/views/gettinghere.client.view.html!text';

export var core = angular.module('core', [
    'core.header.controller',
    'core.home.controller',
    'core.location.controller',
    'core.accomodation.controller',
    'core.gettinghere.controller'
]);

core.config(['$stateProvider', '$urlRouterProvider',
    function($stateProvider, $urlRouterProvider) {
        // Redirect to home view when route not found
        $urlRouterProvider.otherwise('/');

        // Home state routing
        $stateProvider.state('home', {
            url: '/',
            template: homeTmpl,
            controller: 'HomeController'
        });

        $stateProvider.state('location', {
            url: '/location',
            template: locationTmpl,
            controller: 'LocationController'
        });

        $stateProvider.state('accomodation', {
            url: '/accomodation',
            template: accomodationTmpl,
            controller: 'AccomodationController'
        });

        $stateProvider.state('gettinghere', {
            url: '/getting-here',
            template: gettingHereTmpl,
            controller: 'GettingHereController'
        });
    }
]);
