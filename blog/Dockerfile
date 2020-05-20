FROM node:12.11.1-alpine as development

WORKDIR /app

RUN apk update && apk add python make g++

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json package-lock.json /app/

RUN npm install --silent

RUN npm run generate

COPY ./ /app/

EXPOSE 50236

ENV NUXT_HOST 0.0.0.0

ENV NUXT_PORT 50236

CMD [ "npm", "run", "dev" ]
