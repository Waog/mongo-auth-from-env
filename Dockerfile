FROM mongo:3

# Create script directory
RUN mkdir -p /mongoAuthFromEnv
WORKDIR /mongoAuthFromEnv
COPY . /mongoAuthFromEnv

RUN chmod +x createMongoScripts.sh

RUN sed -i "s/ADMIN_NAME_PLACEHOLDER/myAdmin/g" createAdmin.js

RUN ./createMongoScripts.sh

RUN cat createAdmin.js

WORKDIR /