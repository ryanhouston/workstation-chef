include_recipe "zsh"

oh_my_zsh_dir = "/home/#{node['target_user']}/.oh-my-zsh"

git oh_my_zsh_dir do
  repository "git://github.com/robbyrussell/oh-my-zsh"
  user node['target_user']
  group node['target_user']
  action :sync
end

bash "configure oh-my-zsh and zsh" do
  code <<-EOF
    cp #{oh_my_zsh_dir}/templates/zshrc.zsh-template /home/#{node['target_user']}/.zshrc
    chsh -s `which zsh` #{node['target_user']}
  EOF
  not_if { File.exist? "/home/#{node['target_user']}/.zshrc" }
end

