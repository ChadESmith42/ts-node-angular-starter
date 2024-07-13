# Use the official Node.js image
FROM node:20.15-alpine

# Set working directory
WORKDIR /

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy TypeScript source code
COPY . .

# Compile TypeScript
RUN npm run build

# Expose port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
