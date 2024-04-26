FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 5173

ENV VITE_PORT=5173
ENV VITE_HOST=0.0.0.0

CMD ["npm", "run", "dev"]
