#!/bin/bash

DEV_ENV_NAME=`basename $(pwd)`

# Set conda the environment to activate automatically
echo "mamba activate $DEV_ENV_NAME" >> ~/.bashrc
