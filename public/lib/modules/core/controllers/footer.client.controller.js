'use strict';

import angular from 'angular';
import '../services/menus.client.service';

export var footer = angular.module('core.footer.controller', ['core.menus.service']);

footer.controller('FooterController', ['$scope', 'Authentication', 'Menus',
    ($scope, Authentication, Menus) => {
        $scope.authentication = Authentication;
        $scope.menu = Menus.getMenu('footer');

        //function(menuId, menuItemTitle, menuItemURL, menuItemType, menuItemUIRoute, isPublic, roles, position)

        Menus.addMenuItem('footer', 'The weekend', 'the-weekend', 'item', 'weekend', true);
        Menus.addMenuItem('footer', 'Location', 'location', 'item', 'location', true);
        Menus.addMenuItem('footer', 'Accomodation', 'accomodation', 'item', 'accomodation', true);
        Menus.addMenuItem('footer', 'Gifts', 'gifts', 'item', 'gifts', true);
        Menus.addMenuItem('footer', 'Users', 'users', 'item', 'users', false, ['admin']);
    }
]);
