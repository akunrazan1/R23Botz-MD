FROM node:lts-buster

RUN bash install.sh

COPY package.json .

RUN npm install

COPY . .

EXPOSE 5000

CMD ["npm", "start"]
