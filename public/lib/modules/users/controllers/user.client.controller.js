'use strict';

export var user = angular.module('users.user.controller', []);

user.controller('UserController', ['$scope', '$stateParams', '$http', '$location', 'User', 'Authentication',
    function($scope, $stateParams, $http, $location, User, Authentication) {
        $scope.user = Authentication.user;

        // // If user is not signed in then redirect back home
        if (!$scope.user || $scope.user.roles.indexOf('admin') === -1) $location.path('/');

        User.get({ id: $stateParams.id }).$promise.then(function(user) {
            user.rsvp = user.rsvp.toString();
            $scope.editingUser = user;
        });

        $scope.transportOptions = [
            {label: 'Bus from town', value: 'bus'},
            {label: 'Not needed', value: 'none'}
        ];


        // // Update a user profile
        $scope.updateUserProfile = function(isValid) {
            if (isValid) {
                $scope.success = $scope.error = null;
                User.update({ id: $scope.editingUser.id }, $scope.editingUser).$promise.then(function(){
                    $scope.success = true;
                }).catch(function(response) {
                    $scope.error = response.data.message;
                });
            } else {
                $scope.submitted = true;
            }
        };

        // // Change user password
        // $scope.changeUserPassword = function() {
        //     $scope.success = $scope.error = null;

        //     $http.post('/users/password', $scope.passwordDetails).success(function(response) {
        //         // If successful show success message and clear form
        //         $scope.success = true;
        //         $scope.passwordDetails = null;
        //     }).error(function(response) {
        //         $scope.error = response.message;
        //     });
        // };
    }
]);
