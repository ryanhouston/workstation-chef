#
# Cookbook Name:: workstation
# Recipe:: flux
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

apt_repository "f.lux" do
  uri "ppa:kilian/f.lux"
  distribution node['lsb']['codename']
end

package "fluxgui"

