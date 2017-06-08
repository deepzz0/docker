FROM jenkins:alpine

# change user
USER root
RUN apk add --update --no-cache sudo make
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
RUN addgroup docker && adduser jenkins docker
ADD docker-compose /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose

# change to jenkins
USER jenkins