
# Setup the server

FROM node:10.1.0-alpine

WORKDIR /usr/app/server/
COPY server/package*.json ./
RUN npm install -qy
COPY server/ ./

CMD ["npm", "start"]
