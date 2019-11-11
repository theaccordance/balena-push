#
# Sample Dockerfile for installing balena-cli on Ubuntu Bionic
# Usage:
#     $ docker build -t cli-ubuntu .
#     $ docker run -it cli-ubuntu
#
#     # Then on the container:
#     $ which balena
#       /usr/local/nvm/versions/node/v10.16.0/bin/balena
#     $ balena version
#       11.0.4
#
FROM ubuntu:bionic
# install apt dependencies (no need for Node or npm here)
RUN apt-get update && apt-get install -y curl git python g++ make
# use nvm to install node 8 or node 10 (v10 preferred, v8.16.0 works too)
ENV NODE_VERSION v10.16.0
ENV NVM_DIR /usr/local/nvm
ENV PATH $NVM_DIR/versions/node/$NODE_VERSION/bin:$PATH
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
RUN /bin/bash -c "source $NVM_DIR/nvm.sh && nvm install $NODE_VERSION && nvm use $NODE_VERSION"
# install balena-cli
RUN npm install balena-cli -g --production --unsafe-perm
CMD /bin/bash -l

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
