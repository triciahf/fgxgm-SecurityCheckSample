FROM node:18.17.1

RUN npm install -g npm@9.1.3
RUN npm install -g libwebp-dev@1.2.4-0.2

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install

EXPOSE 8080

CMD [ "node", "index.js" ]
