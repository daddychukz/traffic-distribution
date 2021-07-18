FROM azul/zulu-openjdk-alpine:11.0.9-jre-headless

LABEL MAINTAINER="Chuka"
LABEL application="Trivago Hotel Search App"

# Create application directory
WORKDIR /home/node/hotel

COPY java-webserver.jar ./

CMD [ "java", "-jar", "java-webserver.jar" ]
EXPOSE 8080
