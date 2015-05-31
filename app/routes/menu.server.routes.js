'use strict';

/**
 * Module dependencies.
 */
var passport = require('passport');

module.exports = function(app) {
    // menu Routes
    var menu = require('../../app/controllers/menu.server.controller');
    var users = require('../../app/controllers/users.server.controller');

    // Setting up the users profile api
    app.route('/menu').post(menu.save)
                      .put(menu.update);

    app.route('/menus').get(users.requiresLogin, users.hasAuthorization(['admin']), menu.list);

     app.route('/menu/:id').get(menu.byId)
                      .delete(users.requiresLogin, users.hasAuthorization(['admin']), menu.remove);

};
