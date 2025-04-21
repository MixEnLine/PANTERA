FROM nodered/node-red:latest

# Копируем всё в /usr/src/node-red
COPY . /usr/src/node-red/

# Устанавливаем node-red-contrib-alice
RUN npm install node-red-contrib-alice

# Устанавливаем переменные среды
ENV PORT=10000
ENV NODE_RED_PORT=10000

EXPOSE 10000

# Запускаем Node-RED и указываем путь к settings.js
CMD ["node-red", "-p", "10000", "--settings", "./settings.js", "--userDir", "." , "--ip", "0.0.0.0"]
