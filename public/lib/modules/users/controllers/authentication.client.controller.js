'use strict';

export var auth = angular.module('users.auth.controller', []);

auth.controller('AuthenticationController', ['$scope', '$http', '$location', 'Authentication', '$flash',
    function($scope, $http, $location, Authentication, $flash) {
        $scope.authentication = Authentication;

        // If user is signed in then redirect back home
        if ($scope.authentication.user) $location.path('/');

        $scope.transportOptions = [
            {label: 'Bus from town', value: 'bus'},
            {label: 'Not needed', value: 'none'}
        ];

        $scope.signup = function() {

            //Cast rsvp to boolean
            $http.post('/auth/signup', $scope.credentials).success(function(response) {

                // If successful we assign the response to the global user model
                if($scope.credentials.rsvp === 'true') {
                    $scope.authentication.user = response;
                }

                $flash(`Congrats! You successfully RSVP'd for our wedding,
                       keep an eye on your email for further details.`,
                       {
                           type: 'success',
                           persist: 1,
                           duration: 10000
                       }
                );

                // And redirect to the index page
                $location.path('/');
            }).error(function(response) {
                $scope.error = response.message;
            });
        };

        $scope.signin = function() {
            $http.post('/auth/signin', $scope.credentials).success(function(response) {
                // If successful we assign the response to the global user model
                $scope.authentication.user = response;

                // And redirect to the index page
                $location.path('/');
            }).error(function(response) {
                $scope.error = response.message;
            });
        };
    }
]);
