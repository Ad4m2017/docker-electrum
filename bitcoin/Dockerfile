FROM python:3.6-alpine

ENV ELECTRUM_VERSION 3.2.2

RUN apk add py3-qt5
RUN pip3 install https://download.electrum.org/${ELECTRUM_VERSION}/Electrum-${ELECTRUM_VERSION}.tar.gz

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

EXPOSE 7000
CMD ["electrum"]

