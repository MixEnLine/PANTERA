module.exports = {
    // Порт, на котором будет работать Node-RED
    uiPort: process.env.PORT || 10000,
    uiHost: "0.0.0.0", // Будет доступен на всех интерфейсах

    // Отключаем шифрование паролей (если не нужно)
    credentialSecret: false,

    // Настройка проекта, если нужно отключить его
    editorTheme: {
        projects: {
            enabled: false
        }
    },

    // Указываем путь для хранения потоков и настроек
    userDir: '/usr/src/node-red/',

    // Путь к файлам потоков и учётных данных
    flowFile: 'flows.json',  // Указывает на основной файл с потоками
    credentialSecret: 'some-secret-key', // Если используешь секреты в креденшиалах
    flowsFileCredentials: 'flows_cred.json', // Путь к файлу с учётными данными

    // Параметры для безопасности
    adminAuth: {
        type: "credentials",
        users: [{
            username: "admin",  // Имя пользователя для доступа
            password: "$2a$10$PvUJXs2lBQ4/ab9D/J9PA.k1n8FcKqW7zB8oXZg3o0oETn9SkwyQO",  // Пароль (bcrypt)
            permissions: "*"
        }]
    }
};
