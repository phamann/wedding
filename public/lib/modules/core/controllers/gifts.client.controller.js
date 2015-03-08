'use strict';

import angular from 'angular';

export var gifts = angular.module('core.gifts.controller', []);

gifts.controller('GiftsController', ['$scope', 'Authentication',
    ($scope, Authentication) => {
        // This provides Authentication context.
        $scope.authentication = Authentication;
    }
]);
