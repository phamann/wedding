'use strict';

/**
 * Module dependencies.
 */
var passport = require('passport');

module.exports = function(app) {
	// Accomodation Routes
	var accomodation = require('../../app/controllers/accomodation.server.controller');
	var users = require('../../app/controllers/users.server.controller');

	// Setting up the accomodation api	
	app.route('/accomodation/:id').get(users.byId);
	app.route('/accomodation').get(accomodation.list);
	app.route('/accomodation').put(
		users.requiresLogin, users.hasAuthorization(['admin']), 
		accomodation.update
	);
	app.route('/accomodation').delete(
		users.requiresLogin, users.hasAuthorization(['admin']),
		accomodation.delete
	);
};