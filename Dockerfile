FROM debian:buster
LABEL Description="Deploy an application using the Balena CLI."

RUN apt-get update && apt-get --yes install curl wget unzip

# download the standalone balena-cli
RUN curl -s https://api.github.com/repos/balena-io/balena-cli/releases/latest \
	| grep "linux" \
	| cut -d : -f 12,3 \
	| tr -d \" \
	| xargs -I {} sh -c "wget https:{}"

# unzip it
RUN unzip *-standalone.zip

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
CMD ["/entrypoint.sh"]
