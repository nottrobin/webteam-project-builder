#!/usr/bin/env bash

##
# Upload the latest version of the archive to swift
# NB: Requires swift credentials to be setup as environment variables
# (OS_USERNAME, OS_TENANT_NAME &c.)
##

project_name=${1}
version=${2}

archive_filename="${project_name}.${version}.tar.gz"
swift_filepath="${version}/${project_name}.tar.gz"

swift upload ${project_name} ${archive_filename} --object-name ${swift_filepath}
