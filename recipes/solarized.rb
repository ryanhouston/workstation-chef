#
# Cookbook Name:: workstation
# Recipe:: solarized
#
# Copyright (c) 2015 Ryan Houston, All Rights Reserved.

package "dconf-cli"

solarized_dir = "/home/#{node['target_user']}/.solarized"

git solarized_dir do
  repository "git://github.com/Anthony25/gnome-terminal-colors-solarized"
  action :sync
  user node['target_user']
  group node['target_user']
end

bash "install solarized" do
  cwd solarized_dir
  user node['target_user']
  group node['target_user']
  code <<-EOF
  ./install.sh --scheme dark --profile Default
  EOF
end

