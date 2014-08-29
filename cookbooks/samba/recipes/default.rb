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

  notifies :restart, "service[samba]"
end

service 'samba' do
  action [:enable, :start]
end
