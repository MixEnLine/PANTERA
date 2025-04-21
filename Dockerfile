FROM nodered/node-red:latest

# Копируем файлы настройки и flows в рабочую директорию Node-RED
COPY settings.js /usr/src/node-red/
COPY flows.json /usr/src/node-red/
COPY flows_cred.json /usr/src/node-red/

# Установка дополнительных Node-RED нодов, если нужно
# RUN npm install node-red-contrib-mqtt node-red-dashboard node-red-contrib-alice

# Устанавливаем рабочую директорию
WORKDIR /usr/src/node-red

# Порт должен совпадать с тем, что Render ожидает (укажи 10000 в настройках Render)
ENV PORT=10000

# Запуск Node-RED
CMD ["npm", "start", "--", "--userDir", "/usr/src/node-red"]
