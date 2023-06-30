# using Node v10
FROM node:10

# create app directory
WORKDIR /usr/src/lafs-api

# Install dependencies
COPY package*.json ./

RUN npm install -g @angular/cli@v6-lts
RUN npm install

# Bundle app source
COPY . .

# Expose port 3000 oustide container
EXPOSE 3000

# Start the application
CMD npm run start