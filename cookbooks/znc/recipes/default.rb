#
# Cookbook Name:: znc
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "znc" do
  action :install
end

directory '/var/lib/znc' do
  action :create
end

directory '/var/lib/znc/configs' do
  action :create
end

template "/var/lib/znc/configs/znc.conf" do
  source "znc.conf"
end
