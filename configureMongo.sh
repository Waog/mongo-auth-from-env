#!/bin/bash
set -o verbose

# configure createAdmin.js
sed -i "s/ADMIN_NAME_PLACEHOLDER/$MONGO_AUTH_ADMIN_NAME/g" /mongoAuthFromEnv/createAdmin.js
sed -i "s/ADMIN_PW_PLACEHOLDER/$MONGO_AUTH_ADMIN_PW/g" /mongoAuthFromEnv/createAdmin.js

# create the admin in the database
mongo mongod/admin /mongoAuthFromEnv/createAdmin.js

# TODO: configure users
# TODO: create the users in the database
#mongo -u "admin" -p "123456" --authenticationDatabase "admin" mongod/test createUser.js