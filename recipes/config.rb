include_recipe 'midserver::service'

config = node['midserver']['install_base'] + '/agent/config.xml'
service_name = node['midserver']['service_name']
template config do
  source 'config-xml.erb'
  action :create_if_missing
  notifies :restart, "service[#{service_name}]", :immediately
end
