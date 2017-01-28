#!/bin/bash
set -o verbose

# configure createAdmin.js
sed -i "s/ADMIN_NAME_PLACEHOLDER/$MONGO_AUTH_ADMIN_NAME/g" /mongoAuthFromEnv/createAdmin.js
sed -i "s/ADMIN_PW_PLACEHOLDER/$MONGO_AUTH_ADMIN_PW/g" /mongoAuthFromEnv/createAdmin.js

# create the admin in the database
mongo mongod/admin /mongoAuthFromEnv/createAdmin.js

# configure createUser.js
sed -i "s/USER_NAME_PLACEHOLDER/$MONGO_AUTH_USER_NAME/g" /mongoAuthFromEnv/createUser.js
sed -i "s/USER_PW_PLACEHOLDER/$MONGO_AUTH_USER_PW/g" /mongoAuthFromEnv/createUser.js
sed -i "s/USER_DB_PLACEHOLDER/$MONGO_AUTH_USER_DB/g" /mongoAuthFromEnv/createUser.js

# create the user in the database
mongo -u "$MONGO_AUTH_ADMIN_NAME" -p "$MONGO_AUTH_ADMIN_PW" --authenticationDatabase "admin" mongod/$MONGO_AUTH_USER_DB createUser.js