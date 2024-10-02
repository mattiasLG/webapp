FROM node:alpine
COPY ./package.json .
COPY ./yarn.lock .
RUN yarn install
WORKDIR /app
COPY . .
RUN yarn install --frozen-lockfile
EXPOSE 3000
CMD [ "yarn", "start" ]