#
# Cookbook Name:: samba
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'samba' do
  action :install
end

template '/etc/samba/smb.conf' do
  source "smb.conf.erb"
  owner "root"
  group "root"

  notifies :restart, "service[smb]"
  notifies :restart, "service[nmb]"
end

service 'smb' do
  action [:enable, :start]
end

service 'nmb' do
  action [:enable, :start]
end

directory '/export' do
  owner 'nobody'
  group 'nobody'
  action :create
end

directory '/export/public' do
  owner 'nobody'
  group 'nobody'
  action :create
end
