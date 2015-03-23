default['target_user'] = ENV['SUDO_USER'] || ENV['USER']
default['project_dir'] = "/home/#{node['target_user']}/Development"

