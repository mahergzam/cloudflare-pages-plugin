FROM node:16.13

# Copies the clone script to the Docker image
COPY deploy.sh /usr/local/bin/

# Makes the clone script executable
RUN chmod +x /usr/local/bin/deploy.sh

ENTRYPOINT [ "/usr/local/bin/deploy.sh" ]
