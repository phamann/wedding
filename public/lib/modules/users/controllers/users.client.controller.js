'use strict';

export var users = angular.module('users.users.controller', []);

users.controller('UsersController', ['$scope', '$http', '$location', '$anchorScroll', 'User', 'Authentication',
    function($scope, $http, $location, $anchorScroll, User, Authentication) {
        $scope.user = Authentication.user;

        // If user is not signed in then redirect back home
        if (!$scope.user || $scope.user.roles.indexOf('admin') === -1) $location.path('/');

        function listUsers() {
            User.query().$promise.then(function(users){
                $scope.users = users;
                $scope.summary = {
                    yes  : users.filter(function(u){ return u.rsvp; }).length,
                    no   : users.filter(function(u){ return !u.rsvp; }).length,
                    total: users.length
                }
            });
        }

        $scope.deleteUser = function(user) {
            if (window.confirm("Are you sure you want to remove " + user.displayName  + " as a guest?")) {
                User.delete({ id: user._id }).$promise.then(function(response){
                    $scope.success = response.message
                    listUsers();
                    $anchorScroll();
                }).catch(function(response){
                    $scope.error = response.message;
                    $anchorScroll();
                });
            }
        };

        listUsers();
    }
]);
