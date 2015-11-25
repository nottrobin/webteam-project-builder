#!/usr/bin/env bash

##
# Create a {project_name}.tar.gz archive of latest version of project folder
# Also create (or update) {project_name}.archive-version
##

project_name=${1}
project_folder=${project_name}

latest_version=$(git --git-dir=${project_name}/.git rev-parse HEAD)
archive_filename=${project_name}.${latest_version}.tar.gz

# Create archive
tar --exclude-vcs -czf ${archive_filename} -C ${project_folder} .
echo ${latest_version}
