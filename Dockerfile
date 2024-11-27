# explanation: https://stackoverflow.com/questions/65612411/forcing-docker-to-use-linux-amd64-platform-by-default-on-macos/69636473#69636473
FROM --platform=linux/amd64 node:22-alpine

WORKDIR /app

# Copy package.json and package-lock.json files
COPY package*.json .

# Install dependencies
RUN npm install 


# Copy transpiled files
COPY . .

#expose the port that app runs on
EXPOSE 5003

#Define command to run the application
CMD [ "node","./src/server.js" ]