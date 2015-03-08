'use strict';

module.exports = {
    db: 'mongodb://localhost/wedding-dev',
    app: {
        title: 'Patrick and Gemma – July 18th 2015',
        description: 'Together with their families, Gemma & Patrick request the pleasure of your company at their wedding On Saturday 18th July 2015 at 2.00 pm',
        keywords: 'Wedding'
    },
    mailer: {
        from: process.env.MAILER_FROM || 'MAILER_FROM',
        options: {
            service: process.env.MAILER_SERVICE_PROVIDER || 'MAILER_SERVICE_PROVIDER',
            auth: {
                user: process.env.MAILER_EMAIL_ID || 'MAILER_EMAIL_ID',
                pass: process.env.MAILER_PASSWORD || 'MAILER_PASSWORD'
            }
        }
    }
};
