#
# Cookbook Name:: workstation
# Recipe:: heroku
#
# Copyright (c) 2015 Ryan Houston, All Rights Reserved.

include_recipe "heroku"

node[:heroku_plugins][:plugins].each do |name, repo|
  execute "Install heroku plugin #{name}" do
    command "/usr/local/heroku/bin/heroku plugins:install https://github.com/#{repo}"
    not_if "heroku plugins | grep #{name}"
  end
end

