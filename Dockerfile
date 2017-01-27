FROM mongo:3

# Create script directory
RUN mkdir -p /mongoAuthFromEnv
WORKDIR /mongoAuthFromEnv
COPY . /mongoAuthFromEnv

RUN chmod +x createMongoScripts.sh
RUN ./createMongoScripts.sh

WORKDIR /