#!/bin/bash
cd /bin/mimiir/
npm install 

pm2 describe www > /dev/null
RUNNING=$?

if [ "${RUNNING}" -ne 0 ]; then
	pm2 start /bin/mimiir/bin/www
else
	pm2 restart www
fi;