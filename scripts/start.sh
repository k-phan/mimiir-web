#!/bin/bash
cd /bin/mimiir/mimiir-web/
npm install 

pm2 describe mimiir-web > /dev/null
RUNNING=$?

if [ "${RUNNING}" -ne 0 ]; then
	pm2 start /bin/mimiir/mimiir-web/bin/www
else
	pm2 restart www
fi;