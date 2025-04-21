module.exports = {
    flowFile: 'flows.json',
    credentialSecret: false,

    httpAdminRoot: '/',
    ui: { path: '/ui' },

    functionGlobalContext: {},

    logging: {
        console: {
            level: 'info',
            metrics: false,
            audit: false
        }
    }
};
