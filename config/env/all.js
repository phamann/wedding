'use strict';

module.exports = {
    app: {
        title: 'Patrick and Gemma – July 18th 2015',
        description: 'The marriage of Patrick Hamann to Gemma Poignand.',
        keywords: 'Wedding'
    },
    port: process.env.PORT || 3000,
    templateEngine: 'swig',
    sessionSecret: 'MEAN',
    sessionCollection: 'sessions',
    assets: {
        css: [
            'public/dist/stylesheets/*.css'
        ],
        tests: [
            'public/lib/angular-mocks/angular-mocks.js',
            'public/modules/*/tests/*.js'
        ]
    }
};
