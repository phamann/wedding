'use strict';

/**
 * Module dependencies.
 */
var _ = require('lodash'),
    errorHandler = require('../errors.server.controller.js'),
    mongoose = require('mongoose'),
    passport = require('passport'),
    User = mongoose.model('User');

/**
 * Update user details
 */
exports.update = function(req, res) {
    // Init Variables
    var user = req.user;
    var message = null;

    // For security measurement we remove the roles from the req.body object
    delete req.body.roles;

    if (user) {
        // Merge existing user
        user = _.extend(user, req.body);
        user.updated = Date.now();
        user.displayName = user.firstName + ' ' + user.lastName;

        user.save(function(err) {
            if (err) {
                return res.status(400).send({
                    message: errorHandler.getErrorMessage(err)
                });
            } else {
                res.json(user);
            }
        });
    } else {
        res.status(400).send({
            message: 'User is not signed in'
        });
    }
};

/**
 * List of Users
 */
exports.list = function(req, res) {
    User.find().sort('-created').exec(function(err, users) {
        if (err) {
            return res.status(400).send({
                message: errorHandler.getErrorMessage(err)
            });
        } else {
            res.json(users);
        }
    });
};

/**
 * Send User
 */
exports.byId = function(req, res) {
    User.findOne({
        _id: req.params.id
    }).exec(function(err, user) {
        if (err) return res.status(400).send({ message: errorHandler.getErrorMessage(err)});
        if (!user)return res.status(404).send({ message: 'Failed to load User ' + req.params.id});
        res.json(user || null);
    });
};

/**
 * Send User
 */
exports.me = function(req, res) {
    res.json(req.user || null);
};
