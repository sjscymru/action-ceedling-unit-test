#!/bin/bash

# Install Ruby
chmod +x install_ruby.sh
./install-ruby.sh

# Install dependencies
sudo apt-get update
sudo apt-get install -y coreutils gcc gcovr valgrind libc-dev

# Install ceedling
sudo gem install --force ceedling:0.31.1

# Navigate to unit tests
cd %1

# Run unit tests
ceedling test:all
