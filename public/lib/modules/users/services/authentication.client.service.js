'use strict';

export var auth = angular.module('users.auth.service', []);

// Authentication service for user variables
auth.factory('Authentication', [
	function() {
		var _this = this;

		_this._data = {
			user: window.user
		};

		return _this._data;
	}
]);