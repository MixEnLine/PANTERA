# Используем официальное изображение Node-RED
FROM nodered/node-red:latest

# Копируем все файлы в контейнер
COPY . /usr/src/node-red/

# Устанавливаем зависимости, включая node-red-contrib-alice
RUN npm install node-red-contrib-alice

# Открываем порт 10000
EXPOSE 10000

# Указываем настройки для запуска Node-RED с определёнными файлами конфигурации
CMD ["node-red", "-p", "10000", "--settings", "/usr/src/node-red/settings.js"]
