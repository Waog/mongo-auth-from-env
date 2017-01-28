FROM mongo:3

# Create script directory
RUN mkdir -p /mongoAuthFromEnv
WORKDIR /mongoAuthFromEnv
COPY . /mongoAuthFromEnv

RUN chmod +x insertEnvsIntoMongoScripts.sh
RUN ./insertEnvsIntoMongoScripts.sh

RUN cat createAdmin.js

WORKDIR /