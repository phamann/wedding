'use strict';

/**
 * Module dependencies.
 */
exports.index = function(req, res) {
    res.render('index', {
        user: req.user || null,
        request: req,
        isProd: process.env.NODE_ENV === 'production'
    });
};
