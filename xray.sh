#!/bin/sh
if [ ! -f UUID ]; then
  UUID="d2d9c270-5093-46a0-8cc8-a082993cf4e5"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

