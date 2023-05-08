#!/bin/bash

while getopts p: flag
do
    case "${flag}" in
        p) pathname=${OPTARG};;
    esac
done

# Install Ruby
chmod +x install_ruby.sh
./install-ruby.sh

# Install dependencies
sudo apt-get update
sudo apt-get install -y coreutils gcc gcovr valgrind libc-dev

# Install ceedling
sudo gem install --force ceedling:0.31.1

# Navigate to unit tests
echo 'Attempting to run unit tests at location:' $pathname
cd $pathname
ls

# Run unit tests
ceedling test:all
