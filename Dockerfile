FROM node:12-alpine

# update packages
RUN apk update

# create root application folder
WORKDIR /app

# copy configs to /app folder
COPY package*.json ./
# copy source code to /app/src folder
COPY dist /app/dist

# check files list
RUN ls -a

EXPOSE 7777

CMD [ "node", "./dist/server.js" ]