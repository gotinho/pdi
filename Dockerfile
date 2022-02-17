FROM java:8-jdk-alpine

RUN apk upgrade --update && \
    apk add unzip wget && \
    mkdir -p /opt/pentaho && \
    wget -O pdi.zip https://sourceforge.net/projects/pentaho/files/Pentaho-9.2/client-tools/pdi-ce-9.2.0.0-290.zip/download && \
    unzip pdi.zip -d /opt/pentaho

ENV PATH /opt/pentaho/data-integration:$PATH
