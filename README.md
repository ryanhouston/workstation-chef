# Workstation

Configuration for my personal workstation

Use Vagrant to test running from a fresh Ubuntu 14.04 install

## Installing and Running Chef

Installation Steps:
  1. Install ChefDK

    `curl -L https://www.opscode.com/chef/install.sh | sudo bash -s -- -P chefdk`

  2. Install git

    `sudo apt-get install git`

  3. Install this repo

    `git clone git://github.com/ryanhouston/workstation`

  4. Install cookbooks

    * `berks install`
    * `berks vendor`

  5. Run chef-client

    Use `--local-mode` or shorthand `-z`

    `sudo chef-client --local-mode`

Repeat steps 4 and 5 as recipes are added or modified.

