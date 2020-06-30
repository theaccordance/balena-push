#!/bin/sh -l

cd ${GITHUB_WORKSPACE} && cd ${APPLICATION_PATH} && /balena-cli/balena login --token ${API_TOKEN} && /balena-cli/balena push ${APPLICATION_NAME}
