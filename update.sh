#!/usr/bin/env sh

set -e
set -x

rm -rf berks-cookbooks
berks install
berks vendor
sudo chef-client -z -c client.rb

