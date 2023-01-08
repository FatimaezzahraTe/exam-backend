FROM node 
ENV NODE_ENV=production
WORKDIR /backend 
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --production
COPY . .
EXPOSE 5000
CMD [ "node", "server.js" ]