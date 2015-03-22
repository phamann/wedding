'use strict';

export var users = angular.module('users.users.controller', []);

users.controller('UsersController', ['$scope', '$http', '$location', 'User', 'Authentication',
    function($scope, $http, $location, User, Authentication) {
        $scope.user = Authentication.user;

        // If user is not signed in then redirect back home
        if (!$scope.user || $scope.user.roles.indexOf('admin') === -1) $location.path('/');

        User.query().$promise.then(function(users){
            $scope.users = users;
            $scope.summary = {
                yes  : users.filter(function(u){ console.log(u); return u.rsvp; }).length,
                no   : users.filter(function(u){ return !u.rsvp; }).length,
                total: users.length
            }
        });
    }
]);
