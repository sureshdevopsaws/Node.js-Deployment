FROM node

RUN mkdir -p /home/node/app && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY * ./

USER node

RUN npm install

EXPOSE 5000

CMD ["node", "index.js"]