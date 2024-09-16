FROM node:22-alpine

WORKDIR /app

COPY package.json ./
COPY yarn.lock .yarnrc.yml ./

RUN corepack enable

RUN yarn install

COPY . .

RUN yarn build

EXPOSE 8000

CMD ["yarn", "start"]
