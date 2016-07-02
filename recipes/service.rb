service_name = node['midserver']['service_name']

service service_name do
  action :start
end
