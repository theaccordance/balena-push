#!/bin/sh -l

echo "Change directory to application path"
cd ${GITHUB_WORKSPACE} && cd ${APPLICATION_PATH}

echo "Login to BalenaCloud"
balena login --token ${API_TOKEN} && balena push ${APPLICATION_NAME}
