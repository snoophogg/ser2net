FROM alpine:edge

COPY ./setup.sh /var/opt/setup.sh
RUN chmod +x /var/opt/setup.sh

ENV TZ Europe/London
ENV DIVISOR 0

RUN apk add --update -X http://dl-cdn.alpinelinux.org/alpine/edge/testing --no-cache ser2net setserial

ADD ser2net.conf /etc/ser2net.conf

EXPOSE 3333

ENTRYPOINT [ "/bin/sh", "/var/opt/setup.sh" ]
CMD ["-c"]
