FROM alpine:3.8
LABEL Description="Deploy an application using the Balena CLI."
RUN apk update && apk add --no-cache --virtual .build-deps \
	libstdc++ \
	binutils-gold \
	curl \
	g++ \
	gcc \
	gnupg \
	libgcc \
	linux-headers \
	make \
	python \
	python3 \
	nodejs \
	nodejs-npm \
	yarn \
	git \
	openssh \
	bash
RUN npm install balena-cli -g --production --unsafe-perm

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
