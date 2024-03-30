#!/bin/bash

DEV_ENV_NAME=`basename $(pwd)`
FROZEN_ENV_NAME=$DEV_ENV_NAME-frozen

MERGED_ENV_PATH=/tmp/merged-environment.yml
DEV_ENV_FILE=environment.dev.yml
APP_ENV_FILE=environment.yml
FROZEN_ENV_FILE=environment.lock.yml

# Merge the environment files
conda-merge $DEV_ENV_FILE $APP_ENV_FILE > $MERGED_ENV_PATH

# Check if the dev environment exists
if mamba env list | grep -wq $DEV_ENV_NAME; then
    # Update the dev environment from the merged file
    mamba env update -f $MERGED_ENV_PATH -n $DEV_ENV_NAME
else
    # Create the dev environment from the merged file if it does not exist
    mamba env create -f $MERGED_ENV_PATH -n $DEV_ENV_NAME
fi

# Check if the frozen environment exists
if mamba env list | grep -wq $FROZEN_ENV_NAME; then
    # Update the frozen environment from the merged file
    mamba env update -f $APP_ENV_FILE -n $FROZEN_ENV_NAME
else
    # Create the frozen environment from the merged file if it does not exist
    mamba env create -f $APP_ENV_FILE -n $FROZEN_ENV_NAME
fi

# Remove unused packages
mamba clean --all -y

# Export the frozen environment to a lock file
mamba env export -n $FROZEN_ENV_NAME > $FROZEN_ENV_FILE
