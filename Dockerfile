FROM mongo:3

# Create script directory
RUN mkdir -p /mongoAuthFromEnv
COPY . /mongoAuthFromEnv

RUN chmod +x /mongoAuthFromEnv/insertEnvsIntoMongoScripts.sh

