#!/usr/bin/env bash

##
# Compile all SCSS files into CSS,
# in the expected location of static/css
##

project_folder=${1}
sass --force --update ${project_folder}/static/css --style compressed
