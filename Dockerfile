FROM nodered/node-red:latest

# Устанавливаем node-red-contrib-alice
RUN npm install node-red-contrib-alice

# Настройка порта для Render
ENV PORT=10000
ENV NODE_RED_PORT=10000

# Настройка для запуска на 0.0.0.0
ENV NODE_RED_ENABLE_PROJECTS=false
ENV FLOWS=flows.json

EXPOSE 10000

# Запуск Node-RED на 0.0.0.0
CMD ["node-red", "-p", "10000", "--settings", "/data/settings.js", "--userDir", "/data", "--ip", "0.0.0.0"]
