default[:rbenv][:user_installs] = [
  {
    user:    node['target_user'],
    group:   node['target_user'],
    rubies:  ['2.2.0'],
    global:  '2.2.0',
    plugins: [
      {
        name:    'rbenv-ctags',
        git_url: 'https://github.com/tpope/rbenv-ctags',
      },
      {
        name:    'rbenv-communal-gems',
        git_url: 'https://github.com/tpope/rbenv-communal-gems',
      }
    ]
  }
]
default['rbenv']['upgrade'] = true

default['ruby_build']['upgrade'] = true

# Add missing dependencies from ruby_build cookbook
# https://github.com/fnichol/chef-ruby_build/issues/31
override['ruby_build']['install_pkgs_cruby'] =
  %w( autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev
      zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev )

