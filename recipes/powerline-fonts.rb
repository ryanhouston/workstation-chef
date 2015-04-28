home_dir  = "/home/#{node["target_user"]}"
fonts_dir = "#{home_dir}/.fonts"

directory fonts_dir do
  owner node["target_user"]
  group node["target_user"]
end

cookbook_file "PowerlineSymbols.otf" do
  path "#{fonts_dir}/PowerlineSymbols.otf"
end

execute "fc-cache -vf #{fonts_dir}/" do
  user node["target_user"]
end

["#{home_dir}/.config/fontconfig", "#{home_dir}/.config/fontconfig/conf.d"].each do |path|
  directory path do
    owner node["target_user"]
    group node["target_user"]
  end
end

cookbook_file "10-powerline-symbols.conf" do
  path "#{home_dir}/.config/fontconfig/conf.d/10-powerline-symbols.conf"
end

