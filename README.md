# workstation-chef

Configuration for my personal workstation

Use Vagrant to test running from a fresh Ubuntu 14.04 install

## Installing and Running Chef

Installation Steps:
  1. Install dependencies (Chef DK and Git):

    `curl -L https://github.com/ryanhouston/workstation-chef/install.sh | sudo bash`

  2. Clone this repo:

    `git clone git://github.com/ryanhouston/workstation-chef && cd workstation-chef`

  3. Run the update script to install cookbooks and run chef-client in
     local-mode:

    `./update.sh`

Repeat step 3 as recipes are added or modified.

