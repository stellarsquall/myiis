#
# Cookbook:: myiis
# Recipe:: server
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# install IIS
powershell_script 'Install IIS!!' do
  code 'add-windowsfeature web-server'
end

# configure IIS
file 'c:\inetpub\wwwroot\Default.htm' do
  content '<h1>Hello, world</h1>'
end

# start IIS
service 'w3svc' do
  action [ :enable, :start ]
end
