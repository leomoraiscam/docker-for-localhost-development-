FROM node:14-alpine

# Create app directory
WORKDIR /usr/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./
RUN npm install

# Bundle app source
#COPY src/ src/

# Build package
#RUN npm run build

# remove source
#RUN rm -rf /app/src

COPY . .

EXPOSE 3000

CMD [ "node", "start" ]

# Node
# node /app/build/server.js
