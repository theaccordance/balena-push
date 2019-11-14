#!/bin/sh -l

cd $GITHUB_WORKSPACE && cd $APPLICATION_PATH && balena login --token $1 && balena push $2
