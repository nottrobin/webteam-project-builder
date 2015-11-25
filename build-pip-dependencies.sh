#!/usr/bin/env bash

##
# For a project folder, pull down the pip dependencies from PyPi
##

source lib/helpers.sh

project_folder=${1}
create-pip-cache ${project_folder}
