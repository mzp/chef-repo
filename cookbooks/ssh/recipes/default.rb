#
# Cookbook Name:: ssh
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "ssh" do
  action :install
end

template "/etc/ssh/sshd_config" do
  source "sshd_config.erb"
  owner "root"
  group "root"
  mode 0644
end

directory '/var/run/sshd' do
  owner 'root'
  group 'td-agent'
  mode '0755 '
  action :create
end
