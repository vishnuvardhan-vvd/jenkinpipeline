# Use official Node.js base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy all project files
COPY . .

# Expose the app's port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
