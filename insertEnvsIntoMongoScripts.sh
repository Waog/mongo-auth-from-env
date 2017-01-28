#!/bin/bash          
sed -i "s/ADMIN_NAME_PLACEHOLDER/$MONGO_AUTH_ADMIN_NAME/g" /mongoAuthFromEnv/createAdmin.js
sed -i "s/ADMIN_PW_PLACEHOLDER/$MONGO_AUTH_ADMIN_PW/g" /mongoAuthFromEnv/createAdmin.js