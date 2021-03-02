#!/bin/sh -l
if [ -n "${RELEASE_TAG}" ]; then
cd ${GITHUB_WORKSPACE} && cd ${APPLICATION_PATH} && /balena-cli/balena login --token ${API_TOKEN} && /balena-cli/balena push ${APPLICATION_NAME} --release-tag ${RELEASE_TAG_KEY} "${RELEASE_TAG_VALUE}"
else
cd ${GITHUB_WORKSPACE} && cd ${APPLICATION_PATH} && /balena-cli/balena login --token ${API_TOKEN} && /balena-cli/balena push ${APPLICATION_NAME}
fi
