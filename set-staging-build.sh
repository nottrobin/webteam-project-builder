#!/usr/bin/env bash

##
# Update the build_label for staging in swift
##

project_name=${1}
version=${2}

echo ${version} > ${project_name}.build-label-for-staging
swift upload ${project_name} ${project_name}.build-label-for-staging --object-name build-label-for-staging
