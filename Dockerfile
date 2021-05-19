FROM node:12

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]





# docker stop nodejs-hello-world
# docker rm nodejs-hello-world
# docker build -t dushyant8858/nodejs-hello-world:DD .
# docker run --name nodejs-hello-world -p 8080:8080 -d dushyant8858/nodejs-hello-world:DD
# docker push dushyant8858/nodejs-hello-world:DD
