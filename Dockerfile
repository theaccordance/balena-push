FROM node:alpine

# install balena-cli
RUN npm install balena-cli -g --production --unsafe-perm
CMD /bin/bash -l

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
