FROM node:14-alpine 

# Create app directory
WORKDIR /usr/src/app 

# Copy application code to the container
COPY . .

# Install app dependencies
RUN npm install 

# Expose port 3000
EXPOSE 3000

#Copy public and src directories to container to /app directory in container
COPY rdicidr-0.1.0/public /usr/src/app/public
#Copy src directory to /src directory in container
COPY rdicidr-0.1.0/src/ /usr/src/app/src

#start the application
CMD ["npm", "start"]
