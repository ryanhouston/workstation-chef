include_recipe "heroku"

node[:heroku_plugins][:plugins].each do |name, repo|
  execute "Install heroku plugin #{name}" do
    command "/usr/local/heroku/bin/heroku plugins:install https://github.com/#{repo}"
    not_if "/usr/local/heroku/bin/heroku plugins | grep #{name}"
  end
end

