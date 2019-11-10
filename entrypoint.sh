#!/bin/sh -l

balena login $API_TOKEN && cd $APPLICATION_PATH && balena push $APPLICATION_NAME
