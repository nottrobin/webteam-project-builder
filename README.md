# build-scripts

A set of scripts for managing builds of webteam projects.

## Usage

You may use any of the scripts to like, but here's a pretty common pattern
for use:

``` bash
project_name="my-project"

# Prepare the code folder
./fetch-project.sh ${project_name}      # Pull down the latest project code
./node-dependencies.sh ${project_name}  # Create node_modules
./compile-sass.sh ${project_name}       # Create .css files from .scss files

# Create .tar.gz build archive & save the git version ID
version=$(./create-build.sh ${project_name})

# Upload to swift
source ~/.novarc  # Setup the swift login credentials
./upload-build.sh ${project_name} ${version}       # Upload the built version to swift
./set-staging-build.sh ${project_name} ${version}  # Flag this version for staging
```
