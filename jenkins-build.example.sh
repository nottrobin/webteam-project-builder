project_name="example-project"

# Prepare the code folder
./fetch-project.sh ${project_name}      # Pull down the latest project code
./compile-sass.sh ${project_name}       # Create .css files from .scss files
./node-dependencies.sh ${project_name}  # Create node_modules

# Create .tar.gz build archive & save the git version ID
version=$(./create-build.sh ${project_name})

# Upload to swift
source ~/.novarc  # Setup the swift login credentials
./upload-build.sh ${project_name} ${version}       # Upload the built version to swift
./set-staging-build.sh ${project_name} ${version}  # Flag this version for staging
