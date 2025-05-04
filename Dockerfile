FROM node:18-alpine as build

WORKDIR /app

ARG SERVER_URL
ARG NODE_ENV

ENV SERVER_URL=$SERVER_URL
ENV NODE_ENV=$NODE_ENV

COPY package.json .  
RUN npm install

COPY . .

RUN npm run build

FROM nginx:1.23-alpine

WORKDIR /usr/share/nginx/html
RUN rm -rf *
COPY --from=build /app/build .

EXPOSE 80
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
