FROM node:18-alpine as builder
#configure working directory
RUN mkdir -p /app
WORKDIR /app
COPY package.json .
RUN npm install

#bundle app source
COPY . ./
EXPOSE 8080
CMD [ "npm", "start" ]