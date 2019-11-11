#!/bin/sh -l

balena login --token $API_TOKEN && cd $APPLICATION_PATH && balena push $APPLICATION_NAME
