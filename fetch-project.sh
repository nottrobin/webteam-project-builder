#!/usr/bin/env bash

##
# Fetch a webteam project from github
# according to our standard patterns for locations, branches etc.
##

source lib/helpers.sh

project_name=${1}
git_url="git@github.com:ubuntudesign/${project_name}.git"
dir_path=${project_name}
branch="master"

update-from-git-remote ${branch} ${git_url} ${dir_path}
