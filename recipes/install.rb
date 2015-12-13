# How ton install the MID Server zip

basedir = node['midserver']['install_base']


directory basedir do
  recursive true
  action :create
end
