FROM node:16

#create directory 
WORKDIR /app

COPY package*.json ./ 

RUN npm install 

COPY . . 

EXPOSE 3002 

#start app 
CMD ["node", "server.js