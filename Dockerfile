FROM mongo:3

# Create script directory
RUN mkdir -p /mongoAuthFromEnv
WORKDIR /mongoAuthFromEnv
COPY . /mongoAuthFromEnv

RUN ./createMongoScripts.sh

WORKDIR /