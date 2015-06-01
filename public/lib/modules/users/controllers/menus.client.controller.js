'use strict';

export var menus = angular.module('users.menus.controller', []);

menus.controller('MenusController', ['$scope', '$http', '$location', '$anchorScroll', 'User', 'Authentication', 'FoodMenu',
    function($scope, $http, $location, $anchorScroll, User, Authentication, Menu) {
        $scope.user = Authentication.user;

        // If user is not signed in then redirect back home
        if (!$scope.user || $scope.user.roles.indexOf('admin') === -1) $location.path('/');

        function listMenus() {
            Menu.query().$promise.then(function(menus){
                $scope.menus = menus;
                $scope.summary = {
                    'melon'  : menus.filter(function(m){ return m.starter === 'melon'; }).length,
                    'scallops'  : menus.filter(function(m){ return m.starter === 'scallops'; }).length,
                    'beef'  : menus.filter(function(m){ return m.main === 'beef'; }).length,
                    'sea bass'  : menus.filter(function(m){ return m.main === 'sea bass'; }).length,
                    'creme brulee'  : menus.filter(function(m){ return m.dessert === 'creme brulee'; }).length,
                    'eton mess'  : menus.filter(function(m){ return m.dessert === 'eton mess'; }).length,
                    'total': menus.length
                };
                $scope.dietry = menus.filter((m)=>{
                    return !!m.dietry && m.dietry.length > 0;
                });
            });
        }

        $scope.alerts = [];

        $scope.addAlert = function(alert) {
            $scope.alerts.push(alert);
        };

        $scope.closeAlert = function(index) {
            $scope.alerts.splice(index, 1);
        };

        $scope.deleteMenu = function(menu) {
            if (window.confirm("Are you sure you want to remove " + menu.fullName  + "'s menu?")) {
                Menu.delete({ id: menu._id }).$promise.then(function(response){
                    $scope.addAlert({ msg: response.message, type: 'success' });
                    listMenus();
                    $anchorScroll();
                }).catch(function(response){
                    $scope.addAlert({msg: response.message, type: 'danger' });
                    $anchorScroll();
                });
            }
        };

        listMenus();
    }
]);
