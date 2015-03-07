'use strict';

export var user = angular.module('users.user.controller', []);

user.controller('UserController', ['$scope', '$stateParams', '$http', '$location', 'User', 'Authentication',
    function($scope, $stateParams, $http, $location, User, Authentication) {
        // $scope.user = User.get({ id: $stateParams.id });

        // // If user is not signed in then redirect back home
        // if (!Authentication.user) $location.path('/');

        // // Update a user profile
        // $scope.updateUserProfile = function(isValid) {
        //     if (isValid) {
        //         $scope.success = $scope.error = null;
        //         var user = new User($scope.user);

        //         user.$update(function(response) {
        //             $scope.success = true;
        //             Authentication.user = response;
        //         }, function(response) {
        //             $scope.error = response.data.message;
        //         });
        //     } else {
        //         $scope.submitted = true;
        //     }
        // };

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
