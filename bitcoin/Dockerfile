FROM python:3.6-alpine

ENV ELECTRUM_VERSION 3.2.2

RUN pip3 install https://download.electrum.org/${ELECTRUM_VERSION}/Electrum-${ELECTRUM_VERSION}.tar.gz

EXPOSE 7000
CMD ["electrum"]

