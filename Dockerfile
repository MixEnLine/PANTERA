FROM nodered/node-red:latest

EXPOSE 10000

ENV NODE_RED_ENABLE_SAFE_MODE=false
ENV FLOWS=flows.json
ENV PORT=10000

CMD ["node-red", "--port", "10000", "--settings", "/data/settings.js", "--userDir", "/data", "--max-old-space-size=256", "--ip", "0.0.0.0"]
