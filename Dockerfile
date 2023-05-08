FROM node:14-alpine 
#FROM node:18.16.0-alpine3.17
# Create app directory
WORKDIR /usr/src/app 

#COPY . /usr/src/app/.
COPY . .

RUN npm install 

EXPOSE 8080

#COPY rdicidr-0.1.0/src/ .
COPY . . 


CMD [ "node", "ipv4.js" ]
#CMD ["npm", "start"]
