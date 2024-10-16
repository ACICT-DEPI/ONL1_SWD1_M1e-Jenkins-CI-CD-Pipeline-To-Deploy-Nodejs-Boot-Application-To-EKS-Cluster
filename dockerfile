# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Clone the repository
RUN apk add --no-cache git && \
    git clone https://github.com/Omar-shaqra/amigos.git .

# Install dependencies
RUN npm install

# Expose the app port
EXPOSE 3000

# Command to run the app
CMD ["node", "server.js"]
