FROM mogawe/base
MAINTAINER ibnu yahya <anak10thn@gmail.com>

ENV LANG=C.UTF-8 LC_ALL=C

RUN apk --update add python;

USER root
COPY ./www /www
COPY ./init /
EXPOSE 8000
ENTRYPOINT ["/init"]
