#
# Cookbook Name:: workstation
# Recipe:: vim
#
# Copyright (c) 2015 Ryan Houston, All Rights Reserved.

package "vim"

git "/home/#{node['target_user']}/.vim" do
  repository "git://github.com/ryanhouston/Vim-Config"
  enable_submodules true
  user node['target_user']
  group node['target_user']
  action :sync
end

