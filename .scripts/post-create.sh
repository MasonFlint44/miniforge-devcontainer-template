#!/bin/bash

mamba init

mamba install conda-merge -y

.scripts/update-bashrc.sh
.scripts/build-environment.sh
