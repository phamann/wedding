'use strict';

/**
 * Module dependencies.
 */
var passport = require('passport');

module.exports = function(app) {
	// User Routes
	var users = require('../../app/controllers/users.server.controller');

	//app.route('/users').get(users.requiresLogin, users.hasAuthorization(['admin']), users.list)

	// Setting up the users profile api
	app.route('/user/me').get(users.me);
	app.route('/user/:id').get(users.byId);
	app.route('/user').get(users.requiresLogin, users.hasAuthorization(['admin']), users.list)
					   .put(users.update);
	app.route('/user/accounts').delete(users.removeOAuthProvider);

	// Setting up the users password api
	app.route('/user/password').post(users.changePassword);
	app.route('/auth/forgot').post(users.forgot);
	app.route('/auth/reset/:token').get(users.validateResetToken);
	app.route('/auth/reset/:token').post(users.reset);

	// Setting up the users authentication api
	app.route('/auth/signup').post(users.signup);
	app.route('/auth/signin').post(users.signin);
	app.route('/auth/signout').get(users.signout);

	// Finish by binding the user middleware
	app.param('userId', users.userByID);
};