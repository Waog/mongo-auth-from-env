FROM mongo:3

# Create script directory
RUN mkdir -p /mongoAuthFromEnv
COPY . /mongoAuthFromEnv
RUN chmod +x /mongoAuthFromEnv/configureMongo.sh

# init default admin
ENV MONGO_AUTH_ADMIN_NAME admin
ENV MONGO_AUTH_ADMIN_PW 123456

CMD ['/mongoAuthFromEnv/configureMongo.sh']

