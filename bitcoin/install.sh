/*
docker build -t ed .
docker run -it -p 7000:7000 --name ed3 ed sh




docker build -t electrum-bitcoin .
docker run -d -p 7000:7000 --name ebtc11 electrum-bitcoin

/usr/local/bin/electrum setconfig rpcuser test && /usr/local/bin/electrum setconfig rpcpassword test && \
/usr/local/bin/electrum setconfig rpchost 0.0.0.0 && \
/usr/local/bin/electrum setconfig rpcport 7000 && \
/usr/local/bin/electrum daemon start && \
/usr/local/bin/electrum daemon status && \

#docker exec -it ebtc2 electrum create
#docker exec -it ebtc2 electrum daemon load_wallet
#curl --data-binary '{"id":"1","method":"listaddresses"}' http://test:test@localhost:7000
*/
