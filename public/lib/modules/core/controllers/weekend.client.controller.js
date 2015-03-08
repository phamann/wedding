'use strict';

import angular from 'angular';

export var weekend = angular.module('core.weekend.controller', []);

weekend.controller('WeekendController', ['$scope', 'Authentication',
    ($scope, Authentication) => {
        // This provides Authentication context.
        $scope.authentication = Authentication;
   }
]);
