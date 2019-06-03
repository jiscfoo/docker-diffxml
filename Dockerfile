FROM alpine
LABEL maintainer="foo@mafoo.org.uk"
LABEL Description="Alpine Linux based container with diffxml available"

COPY patch-1.patch /

RUN set -x && \
    apk update && apk add bash openjdk8 && \
    wget -O diffxml.tar.gz https://sourceforge.net/projects/diffxml/files/diffxml/0.96%20BETA/diffxml-0.96B.tar.gz/download && \
    tar xfz diffxml.tar.gz && \
    patch -p0 <patch-1.patch

ENTRYPOINT ["/diffxml/diffxml.sh"]