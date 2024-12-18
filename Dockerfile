# Use official node image as base image
FROM node:14

# Set working directory in container
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 8080
EXPOSE 8080

# Command to run the app
CMD ["node", "app.js"]


