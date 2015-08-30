#
# Cookbook Name:: heroku
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'vsftpd' do
  action :install
end

template '/etc/vsftpd/vsftpd.conf' do
  source 'vsftpd.conf.erb'
  owner 'root'
  group 'root'
  mode 0644
end
