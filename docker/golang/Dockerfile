FROM alpine:3.14

LABEL MAINTAINER="Chuka"
LABEL application="Trivago Hotel Search App"

# Create application directory
WORKDIR /home/node/hotel

COPY golang-webserver ./

RUN chmod +x ./golang-webserver

ENTRYPOINT [ "./golang-webserver" ]
EXPOSE 8080
