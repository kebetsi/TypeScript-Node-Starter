# inspired from https://gist.github.com/zmts/509f224950f85f3cfe4365e2b80081d1#dockerfile

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