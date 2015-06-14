'use strict';

export var menu = angular.module('users.menu.controller', []);

menu.controller('MenuController', ['$scope', '$http', '$location', '$anchorScroll', 'Authentication', '$flash',
    function($scope, $http, $location, $anchorScroll, Authentication, $flash) {
        $scope.authentication = Authentication;

        $scope.transportOptions = [
            {label: 'Bus from town', value: 'bus'},
            {label: 'Not needed', value: 'none'}
        ];

        $scope.starterOptions = [
            { label: 'Trio of chilled melon with selected berries macerated in champagne and finished with strawberry sorbert and ripped mint', value: 'melon' },
            { label: 'Seared scallops and spicy chorizo with lightly pickled baby vegetables & béarnaise sauce', value: 'scallops' }
        ];

        $scope.mainOptions = [
            { label: 'Flame grilled scotch beef fillet au poivre with blistered cherry tomatoes and woodland mushroom dauphinoise potatoes', value: 'beef' },
            { label: 'Pan fried fillet of sea bass presented on a bed of buttered crushed jersey royals with picked crab and herbs topped with grilled langoustine finished with a chive cream', value: 'sea bass' },
            { label: 'Warm salad of sautéed sea salt and thyme Jersey royal potatoes, poached hen egg, onion marmalade, parmesan crisp and grain mustard dressing (v)', value: 'potato salad' }
        ];

        $scope.dessertOptions = [
           { label: 'Caramelized banana creme brulee with a coconut creme anglaise, rum and raisin ice cream and banana sponge', value: 'creme brulee' },
           { label: 'Rosewater eton mess with blackberry curd, lemon sherbet and nutty pear crumble', value: 'eton mess' }
        ];

        $scope.menu = function() {

            $http.post('/menu', $scope.menuSelection).success(function(response) {

                $flash('Thanks. We hope you enjoy the food!',
                       {
                           type: 'success',
                           persist: 1,
                           duration: 10000
                       }
                );

                $anchorScroll();

                // And redirect to the index page
                $location.path('/');
            }).error(function(response) {
                $scope.error = response.message;
            });
        };

    }
]);
