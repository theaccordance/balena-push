#!/bin/sh -l

cd ${GITHUB_WORKSPACE} && cd ${APPLICATION_PATH} && balena login --token ${API_TOKEN} && balena push ${APPLICATION_NAME}
