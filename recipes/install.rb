# How ton install the MID Server zip

basedir = node['midserver']['install_base']


directory basedir do
  recursive true
  action :create
end

remote_file node['midserver']['zipfile'] do
  source node['midserver']['download_url']
  action :create
end

execute 'Extract the SNC MID Server' do
  command "unzip #{node['midserver']['zipfile']}"
  cwd basedir
  not_if { File.exists?("#{basedir}/agent/config.xml") }
end
