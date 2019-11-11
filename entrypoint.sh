#!/bin/sh -l

env && balena login --token $API_TOKEN && cd $APPLICATION_PATH && balena push $APPLICATION_NAME
