#FROM node
#WORKDIR /client
#COPY package.json /client
#RUN npm install -g http-server
#COPY . /client
#CMD ["http-server","-c", "-1"]
FROM node
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
