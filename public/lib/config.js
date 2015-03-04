import angular from 'angular';
import 'angular-ui-router';
import 'angular-animate';
import 'angular-cookies';
import 'angular-sanitize';
import 'angular-resource';
import 'angular-touch';
import 'ui-utils';

var appModuleName = 'patrickandgemma';
var appModuleDependencies = [
	'ngResource', 
	'ngCookies',  
	'ngAnimate',  
	'ngTouch',  
	'ngSanitize',  
	'ui.router', 	
	'ui.utils'
];

var registerModule = (moduleName, dependencies) => {
	angular.module(moduleName, dependencies || []);
	angular.module(appModuleName).requires.push(moduleName);
};

var config = {
	appModuleName,
	appModuleDependencies,
	registerModule
};

export { config };