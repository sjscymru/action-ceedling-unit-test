#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Install Ruby
# chmod +x $SCRIPT_DIR/install_ruby.sh
# ./SCRIPT_DIR/install-ruby.sh

# Install dependencies
sudo apt-get update
sudo apt-get install -y coreutils gcc gcovr valgrind libc-dev

# Install ceedling
sudo gem install --force ceedling:0.31.1

# Navigate to unit tests
ls -l
echo 'Attempting to run unit tests at location:' $1
cd $1
ls -l

# Run unit tests
ceedling test:all
