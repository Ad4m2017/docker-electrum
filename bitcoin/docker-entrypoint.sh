#!/usr/bin/env sh
set -ex

# Graceful shutdown
trap 'pkill -TERM -P1; electrum daemon stop; exit 0' SIGTERM

# Set config
# electrum setconfig rpcuser ${ELECTRUM_USER}
# electrum setconfig rpcpassword ${ELECTRUM_PASSWORD}
/usr/local/bin/electrum setconfig rpcuser test
/usr/local/bin/electrum setconfig rpcpassword test
/usr/local/bin/electrum setconfig rpchost 0.0.0.0
/usr/local/bin/electrum setconfig rpcport 7000

# XXX: Check load wallet or create

# Run application
/usr/local/bin/electrum daemon start

# Wait forever
while true; do
  tail -f /dev/null & wait ${!}
done
