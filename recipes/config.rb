config = node['default']['install_base'] + '/agent/config.xml'

template config do
  source 'config-xml.erb'
  :create_if_missing
  notifies :restart, 'service[snc-midserver]', immediately
end