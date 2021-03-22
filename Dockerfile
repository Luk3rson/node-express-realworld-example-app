# AUTHOR Lukas
FROM node:14

# Dependencies
COPY package*.json ./

# PROD only npm ci --only=production
RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node", "app.js" ]