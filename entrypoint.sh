#!/bin/bash

# Install dependencies
sudo apt-get update
sudo apt-get install -y coreutils gcc gcc-multilib gcovr valgrind libc-dev

# Install ceedling
sudo gem install --force ceedling:0.31.1

# Navigate to unit tests
echo 'Attempting to run unit tests at location:' $1
cd $1

# Run unit tests
ceedling test:all
