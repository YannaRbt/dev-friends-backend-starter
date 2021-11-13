FROM node:16-alpine 

ARG PORT=3001

ENV NODE_ENV production

WORKDIR /app
COPY . .

RUN yarn --production
RUN yarn build

EXPOSE ${PORT}

CMD yarn start:prod