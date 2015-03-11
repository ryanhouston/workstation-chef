default['rbenv']['user_installs'] = [
  {
    'user'    => ENV['SUDO_USER'] || ENV['USER'],
    'rubies'  => ['2.2.0'],
    'global'  => '2.2.0',
  }
]

default['ruby_build']['updates'] = true

# Add missing dependencies from ruby_build cookbook
# https://github.com/fnichol/chef-ruby_build/issues/31
override['ruby_build']['install_pkgs_cruby'] =
  %w( autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev
      zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev )

