'use strict';

/**
 * Module dependencies.
 */
var mongoose = require('mongoose'),
    Schema = mongoose.Schema;

/**
 * A Validation function for properties
 */
var validateProperty = function(property) {
    return (!this.updated || property.length);
};

/**
 * Accomodation Schema
 */
var AccomodationSchema = new Schema({
    name: {
        type: String,
        trim: true,
        default: '',
        validate: [validateProperty, 'Please fill in accomodation name']
    },
    location: {
        type: String,
        trim: true,
        default: '',
        validate: [validateProperty, 'Please fill in accomodation location']
    },
    address: {
        type: String,
        trim: true
    },
    website: {
        type: String,
        trim: true,
        default: '',
        validate: [validateProperty, 'Please fill in the website address'],
        match: [/^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/, 'Please fill a valid url']
    },
    img: {
        type: String,
        trim: true,
        default: '',
        validate: [validateProperty, 'Please fill in the image address'],
        match: [/^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/, 'Please fill a valid url']
    },
    updated: {
        type: Date
    },
    created: {
        type: Date,
        default: Date.now
    }
});

mongoose.model('Accomodation', AccomodationSchema);
