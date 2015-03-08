'use strict';

import angular from 'angular';
import once from 'lodash/function/once';

export var gettinghere = angular.module('core.gettinghere.controller', []);

gettinghere.controller('GettingHereController', ['$scope', 'Authentication',
    ($scope, Authentication) => {
        // This provides Authentication context.
        $scope.authentication = Authentication;

        var initMap = once(function(){
            // Provide your access token
            L.mapbox.accessToken = 'pk.eyJ1IjoicGF0cmlja2hhbWFubiIsImEiOiJ2Rk9jdlEwIn0.g4rJiDT4DPEEGjWFyOgXkQ';
            // Create a map in the div #map
            L.mapbox.map('map', 'patrickhamann.l5leodf2');
        });

        initMap();
    }
]);
