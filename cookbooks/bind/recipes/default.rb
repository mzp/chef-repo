#
# Cookbook Name:: bind
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'bind' do
  action :install
end

template "/etc/named.conf" do
  source "named.conf"
  owner "named"
  group "named"
  mode '0644'
end

template "/etc/named.local.zones" do
  source "named.local.zones"
  owner "named"
  group "named"
  mode '0644'
end

template "/var/named/named.local" do
  source "named.local"
  owner "named"
  group "named"
  mode '0644'
end

service "named" do
  action [:enable, :restart]
end
