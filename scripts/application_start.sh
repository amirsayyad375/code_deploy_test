#!/bin/bash

#give permission for everything in api directory
sudo chmod -R 777 /home/ubuntu/api

#navigate into our working directory where we have all our github files
cd /home/ubuntu/api
#rm -rf dist/
#rm -rf node_modules/
#rm -rf package-lock.json

#install node modules

npm install --force
npm run build

#start our node app in the background

pm2 restart 0 