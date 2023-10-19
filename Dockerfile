FROM node:lts-alpine

WORKDIR /usr/src/app

COPY flux/package*.json ./
RUN npm install

COPY flux/ .
EXPOSE 5173

RUN adduser -D user
RUN chown -R user:user /usr/src/app
USER user

CMD [ "npm", "run", "dev", "--", "--host"]