FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install --production

COPY . .

ENV PORT=8002
EXPOSE 8002

CMD ["npm", "start"]
