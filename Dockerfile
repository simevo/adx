FROM node:16

WORKDIR /app

COPY ./package.json ./yarn.lock ./
COPY cli ./cli
COPY common ./common
COPY server ./server

RUN yarn && yarn build

CMD ["yarn", "server"]
