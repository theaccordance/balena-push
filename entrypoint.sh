#!/bin/sh -l
env

echo "Change directory to application path"
cd ${GITHUB_WORKSPACE} && cd ${APPLICATION_PATH}

echo "debug the path"
pwd
ls -la

echo "Login to BalenaCloud"
balena login --token ${API_TOKEN} && balena push ${APPLICATION_NAME}
