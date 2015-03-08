'use strict';

import angular from 'angular';
import '../services/menus.client.service';

export var header = angular.module('core.header.controller', ['core.menus.service']);

header.controller('HeaderController', ['$scope', 'Authentication', 'Menus',
    ($scope, Authentication, Menus) => {
        $scope.authentication = Authentication;
        $scope.isCollapsed = false;
        $scope.menu = Menus.getMenu('topbar');

        //function(menuId, menuItemTitle, menuItemURL, menuItemType, menuItemUIRoute, isPublic, roles, position)

        Menus.addMenuItem('topbar', 'Location', 'location', 'item', 'location', true);
        Menus.addMenuItem('topbar', 'Accomodation', 'accomodation', 'item', 'accomodation', true);
        Menus.addMenuItem('topbar', 'Getting here', 'getting-here', 'item', 'gettinghere', true);
        Menus.addMenuItem('topbar', 'Users', 'users', 'item', 'users', false, ['admin']);

        $scope.toggleCollapsibleMenu = () => {
            $scope.isCollapsed = !$scope.isCollapsed;
        };

        // Collapsing the menu after navigation
        $scope.$on('$stateChangeSuccess', () => {
            $scope.isCollapsed = false;
        });
    }
]);
