#!/bin/bash

# Install dependencies
sudo apt-get update
sudo apt-get install -y \
  build-essential \
  zlib1g-dev \
  libssl-dev \
  libreadline-dev \
  libyaml-dev \
  libsqlite3-dev \
  sqlite3 \
  libxml2-dev \
  libxslt1-dev \
  libcurl4-openssl-dev \
  software-properties-common \
  curl

# Install rbenv
cd ~
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

# Install ruby-build plugin
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

# Install Ruby 2.7.1
rbenv install 2.7.1
rbenv global 2.7.1

# Verify installation
ruby -v
