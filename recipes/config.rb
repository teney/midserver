include_recipe 'midserver::service'

config = node['midserver']['install_base'] + '/agent/config.xml'

template config do
  source 'config-xml.erb'
  :create_if_missing
  notifies :restart, "service[#{node['midserver']['service_name']}]", :immediately
end
