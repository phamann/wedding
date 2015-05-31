'use strict';

/**
 * Module dependencies.
 */
var _ = require('lodash'),
	errorHandler = require('./errors.server.controller'),
	mongoose = require('mongoose'),
	passport = require('passport'),
	Menu = mongoose.model('Menu');

/**
 * Save
 */
exports.save = function(req, res) {

	// Init Variables
	var menu = new Menu(req.body);
	var message = null;

	// Then save the menu
	menu.save(function(err) {
		if (err) {
			return res.status(400).send({
				message: errorHandler.getErrorMessage(err)
			});
		} else {
			res.json(menu);
		}
	});
};

/**
 * Delete menu
 */
exports.remove = function(req, res) {
    Menu.findOne({
        _id: req.params.id
    }).remove(function (err, menu) {
        if (err) return res.status(400).send({ message: errorHandler.getErrorMessage(err)});
        res.json({ message: "Successfully deleted menu " + menu.fullName });
    });
}

/**
 * Update menu details
 */
exports.update = function(req, res) {
    // Init Variables
    var menu = req.menu;
    var message = null;

    // For security measurement we remove the roles from the req.body object
    delete req.body.roles;

    if (menu) {
        // Merge existing menu
        menu = _.extend(menu, req.body);
        menu.updated = Date.now();

        menu.save(function(err) {
            if (err) {
                return res.status(400).send({
                    message: errorHandler.getErrorMessage(err)
                });
            } else {
                res.json(menu);
            }
        });
    } else {
        res.status(400).send({
            message: 'Please submit a menu'
        });
    }
};


/**
 * List of menus
 */
exports.list = function(req, res) {
    Menu.find().sort('-created').exec(function(err, menus) {
        if (err) {
            return res.status(400).send({
                message: errorHandler.getErrorMessage(err)
            });
        } else {
            res.json(menus);
        }
    });
};

/**
 * Send Menu
 */
exports.byId = function(req, res) {
    Menu.findOne({
        _id: req.params.id
    }).exec(function(err, menu) {
        if (err) return res.status(400).send({ message: errorHandler.getErrorMessage(err)});
        if (!menu)return res.status(404).send({ message: 'Failed to load Menu ' + req.params.id});
        res.json(menu || null);
    });
};


