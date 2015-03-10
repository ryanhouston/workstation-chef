default['rbenv']['user_installs'] = [
  {
    'user'    => ENV['SUDO_USER'] || ENV['USER'],
    'rubies'  => ['2.1.5'],
    'global'  => '2.1.5',
  }
]

default['ruby_buld']['updates'] = true

