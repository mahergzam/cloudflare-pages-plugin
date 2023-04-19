FROM node:16.13

# Copies the clone script to the Docker image
COPY deploy.sh /usr/local/bin/
COPY set_env /usr/local/bin

# Makes the clone script executable
RUN chmod +x /usr/local/bin/deploy.sh
RUN chmod +x /usr/local/bin/set_env

ENTRYPOINT [ "/usr/local/bin/deploy.sh" ]
