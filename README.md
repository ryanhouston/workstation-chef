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
    * `berks vendor cookbooks/`

  5. Run chef

    * chef-solo: `sudo chef-solo -c solo.rb`
    * chef-client with local-mode `sudo chef-client --local-mode -c solo.rb`
      * This is apparently the new preferred/recommended way to run chef on a
        local machine

Repeat steps 4 and 5 as recipes are added or modified.

