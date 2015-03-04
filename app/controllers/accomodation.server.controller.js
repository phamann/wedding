'use strict';

/**
 * Module dependencies.
 */
var _ = require('lodash'),
	errorHandler = require('./errors.server.controller'),
	mongoose = require('mongoose'),
	passport = require('passport'),
	Accomodation = mongoose.model('Accomodation');

/**
 * Signup
 */
exports.create = function(req, res) {
	// For security measurement we remove the roles from the req.body object
	delete req.body.roles;

	// Init Variables
	var accomodation = new Accomodation(req.body);
	var message = null;

	// Then save the accomodation 
	accomodation.save(function(err) {
		if (err) {
			return res.status(400).send({
				message: errorHandler.getErrorMessage(err)
			});
		} else {
			res.json(user);
		}
	});
};

/**
 * Update accomodation details
 */
exports.update = function(req, res) {
	// Init Variables
	var message = null;

	// For security measurement we remove the roles from the req.body object
	delete req.body.roles;

	Accomodation.findOne({
		_id: req.params.id
	}).exec(function(err, accomodation) {
		if (err) {
			return res.status(400).send({
				message: errorHandler.getErrorMessage(err)
			});
		} else {
			accomodation = _.extend(accomodation, req.body);			
			accomodation.save(function(err) {
				if (err) {
					return res.status(400).send({
						message: errorHandler.getErrorMessage(err)
					});
				} else {
					res.json(accomodation)
				}
			});
		}
	});
};

/**
 * Delete accomodation details
 */
exports.delete = function(req, res) {
	// Init Variables
	var message = null;

	// For security measurement we remove the roles from the req.body object
	delete req.body.roles;

	Accomodation.findOne({
		_id: req.params.id
	}).exec(function(err, accomodation) {
		accomodation.remove(function (err, product) {
  			if (err) return handleError(err);
  			res.json({message: "Accomodation successfully deleted"});
  		});
	});
};

/**
 * List of Accomodations
 */
exports.list = function(req, res) {
	Accomodation.find().sort('-created').exec(function(err, accomodations) {
		if (err) {
			return res.status(400).send({
				message: errorHandler.getErrorMessage(err)
			});
		} else {
			res.json(accomodations);
		}
	});
};

/**
 * Find Accomodation
 */
exports.byId = function(req, res) {
	Accomodation.findOne({
		_id: req.params.id
	}).exec(function(err, accomodation) {
		if (err) return res.status(400).send({ message: errorHandler.getErrorMessage(err)});
		if (!accomodation)return res.status(404).send({ message: 'Failed to load Accomodation ' + req.params.id});		
		res.json(accomodation || null);
	});
};
