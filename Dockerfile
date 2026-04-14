# Create a new build stage from a base image.
FROM node

# Change working directory.
WORKDIR /app

# Copy files and directories.
COPY . /app

# Executing the commands.
RUN npm install

# Describe which ports your application is listening on.
EXPOSE 80

# Specify default commands when conatiner getting started based on the image.
CMD [ "node", "server.js" ]

# Testing for GIT SYNC