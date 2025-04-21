module.exports = {
    uiPort: process.env.PORT || 10000,
    uiHost: "0.0.0.0", // Будет доступен на всех интерфейсах

    // Убираем настройку для аутентификации
    adminAuth: false, // Отключаем аутентификацию

    credentialSecret: false,

    editorTheme: {
        projects: {
            enabled: false
        }
    },

    userDir: '/usr/src/node-red/',

    flowFile: 'flows.json',
    flowsFileCredentials: 'flows_cred.json'
};
