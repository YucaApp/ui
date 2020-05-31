FROM node:12-alpine

WORKDIR /usr/src/app

COPY . ./

RUN yarn install --frozen-lock-file
RUN yarn build

CMD [ "yarn", "start" ]
