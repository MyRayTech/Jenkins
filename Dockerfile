FROM jenkins/jenkins:alpine
USER root

RUN \
echo "*** Install Runtime Packages ***" && \
apk add --no-cache \
    docker && \
echo "*** Cleanup ***" && \
rm -rf \
    /tmp/*
    
RUN chmod 666 /var/run/docker.sock

USER jenkins
