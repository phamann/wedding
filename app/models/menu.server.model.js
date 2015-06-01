'use strict';

/**
 * Module dependencies.
 */
var mongoose = require('mongoose'),
    Schema = mongoose.Schema,
    crypto = require('crypto');

/**
 * Menu Schema
 */
var MenuSchema = new Schema({
    fullName : {
        type: String,
        trim: true,
        required: 'Please enter your full name.'
    },
    starter: {
        type: String,
        trim: true,
        required: 'Please select a starter.'
    },
    main: {
        type: String,
        trim: true,
        required: 'Please select a main.'
    },
    dessert: {
        type: String,
        trim: true,
        required: 'Please select a dessert'
    },
    dietry: {
        type: String,
        trim: true
    },
    updated: {
        type: Date
    },
    created: {
        type: Date,
        default: Date.now
    },
});

mongoose.model('Menu', MenuSchema);
