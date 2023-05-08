#!/bin/bash

# Install Ruby
chmod +x install_ruby.sh
./install-ruby.sh

# Install dependencies
sudo apt-get update
sudo apt-get install -y coreutils gcc gcovr valgrind libc-dev

# Install ceedling
gem install --force ceedling:0.31.1

# Navigate to unit tests
cd $GITHUB_WORKSPACE/$UNIT_TEST_PATH

# Run unit tests
ceedling test:all
