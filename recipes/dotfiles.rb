#
# Cookbook Name:: workstation
# Recipe:: dotfiles
#
# Copyright (c) 2015 Ryan Houston, All Rights Reserved.

package "stow"

["#{node["project_dir"]}", "#{node["project_dir"]}/ryanhouston"].each do |path|
  directory path  do
    owner node["target_user"]
    group node["target_user"]
    action :create
  end
end

git "#{node["project_dir"]}/ryanhouston/dotfiles" do
  repository "git://github.com/ryanhouston/dotfiles"
  user node["target_user"]
  group node["target_user"]
  action :sync
end

execute "./install.sh" do
  cwd "#{node["project_dir"]}/ryanhouston/dotfiles"
  user node["target_user"]
end

