#!/usr/bin/env bash

set -e

echo "Installing ruby"

apt-add-repository -y ppa:brightbox/ruby-ng
apt-get update
apt-get install -y build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev libpq-dev ruby2.2 ruby2.2-dev

gem install bundler

git clone https://github.com/bethesque/pact_broker
cp -r pact_broker/example /usr/local/pact_broker

