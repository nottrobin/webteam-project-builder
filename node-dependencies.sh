#!/usr/bin/env bash

##
# Pull all node dependencies into the project folder
##

project_folder=${1}

(
  cd ${project_folder}
  npm install
)
