FROM node:latest

RUN mkdir /app
RUN mkdir /app/src

COPY ["package.json", "package-lock.json", "/app/"]
COPY ["server.js", "/app/src"]

WORKDIR /app

RUN npm install --silient

EXPOSE 3000
CMD npm start