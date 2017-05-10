FROM alpine:latest
MAINTAINER deepzz <deepzz.qi@gmail.com>

RUN apk --no-cache add bind &&\
  rm /var/bind/pri/127.zone /var/bind/pri/localhost.zone

COPY data/*.zone /var/bind/pri/
COPY /data/named.conf.recursive /etc/bind/named.conf.recursive
COPY entrypoint.sh /entrypoint.sh

RUN ln -s /etc/bind/named.conf.recursive /etc/bind/named.conf &&\
  named-checkconf /etc/bind/named.conf


EXPOSE 53 53/udp
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/sbin/named","-4","-c","/etc/bind/named.conf","-f","-u","named"]
