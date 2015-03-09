# workstation

Configuration for my personal workstation

Use Vagrant to test running from a fresh Ubuntu 14.04 install

## Installing and Running Chef

Installation Steps:
  1. Install Chef: `curl -L https://www.opscode.com/chef/install.sh | sudo bash`
  2. Install git: `sudo apt-get install git`
  3. Install the repo: `git clone git://github.com/ryanhouston/workstation`
  4. Install cookbooks
    * `berks install`
    * `berks vendor cookbooks/`
  5. Run chef
    * chef-solo: `sudo chef-solo -c solo.rb`
    * chef-client with local-mode `sudo chef-client --local-mode -c solo.rb`
      * This is apparently the new preferred/recommended way to run chef on a
        local machine

Repeat steps 4 and 5 as recipes are added or modified.

## TODO

  * install script
    * automate/document steps 1 and 2
    * how do you do this before having git to clone the repo that contains the
      install scrip? probably curl the script and pipe to bash.

      `curl -L https://github.com/ryanhouston/workstation/raw/master/install.sh | sudo bash`
  * Recipes to install stuff
    * ryanhouston/dotfiles repo
    * ryanhouston/Vim-Config repo
    * dell driver installer?
    * zsh / ohmyzsh
    * virtualbox
    * keepassx
    * bittorrent sync
    * f.lux
    * handbrake
    * hipchat
    * hp printer tools
    * skype
    * google music
    * asunder
    * beersmith
    * wine
    * yubikey management tools

