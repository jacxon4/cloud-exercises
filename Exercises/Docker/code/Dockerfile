FROM node:latest

WORKDIR /opt/app

COPY . .

RUN npm install --only=production


EXPOSE 8080

CMD ["npm", "start"]
#ENTRYPOINT ["npm", "start"] --> Will execute the app directly
# this is mainly for final images that are running, using CMD leaves the
# command line opened to debug. An error on the entrypoint will close the container