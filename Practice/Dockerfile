FROM ubuntu:18.04

WORKDIR /opt/app
USER root

COPY . .

#Install NodeJs 10
RUN apt-get update
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_10.x  | bash -
RUN apt-get -y install nodejs
RUN npm install

RUN npm install --only=production

EXPOSE 8888

CMD ["npm", "start"]