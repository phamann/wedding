'use strict';

module.exports = {
    db: process.env.MONGOHQ_URL || process.env.MONGOLAB_URI || 'mongodb://' + (process.env.DB_1_PORT_27017_TCP_ADDR || 'localhost') + '/wedding',
    app: {
        title: 'Patrick and Gemma – July 18th 2015',
        description: 'Together with their families, Gemma & Patrick request the pleasure of your company at their wedding On Saturday 18th July 2015 at 2.00 pm',
        keywords: 'Wedding'
   },
    mailer: {
        from: process.env.POSTMARK_INBOUND_ADDRESS,
        options: {
            service: 'Postmark',
            host: process.env.POSTMARK_SMTP_SERVER,
            auth: {
                user: process.env.POSTMARK_API_TOKEN,
                pass: process.env.POSTMARK_API_TOKEN
            }
        }
    }
};
