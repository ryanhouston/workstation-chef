#
# Cookbook Name:: workstation
# Recipe:: handbrake
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

apt_repository "handbrake" do
  uri "ppa:stebbins/handbrake-releases"
  distribution node['lsb']['codename']
end

package "handbrake-gtk"

