#!/bin/sh
/bin/sed -i "s/\$PORT/$PORT/g" /etc/shadowsocks-rust/config.json
/bin/sed -i "s/\$PASSWORD/$PASSWORD/g" /etc/shadowsocks-rust/config.json
/bin/sed -i "s/\$WS_PATH/$WS_PATH/g" /etc/shadowsocks-rust/config.json
/bin/sed -i "s/\$HOST/$HOST/g" /etc/shadowsocks-rust/config.json
cat /etc/shadowsocks-rust/config.json
# envsubst $VARS < /etc/shadowsocks-rust/config.json.var > /etc/shadowsocks-rust/config.json
exec "$@"