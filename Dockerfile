FROM mendsley/alpine-runit
MAINTAINER Matthew Endsley <mendsley@gmail.com>

RUN set -x \
	&& apk add --update rsyslog \
	&& mkdir /service/rsyslog \
	;

COPY rsyslog.conf /etc/rsyslog.conf
COPY run.sh /service/rsyslog/run
EXPOSE 514/udp
