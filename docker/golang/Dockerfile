FROM alpine:3.14

LABEL MAINTAINER="Chuka"
LABEL application="Trivago Hotel Search App"

# RUN mkdir -p /home/node/silly-app/node_modules && chown -R node:node /home/node/silly-app
# Create application directory
WORKDIR /home/node/hotel

COPY golang-webserver ./

RUN chmod +x ./golang-webserver

ENTRYPOINT [ "./golang-webserver" ]
EXPOSE 8080
