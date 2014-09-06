#
# Cookbook Name:: nfs
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'nfs-utils' do
  action :install
end


template '/etc/sysconfig/nfs' do
  source "nfs.erb"
  owner "root"
  group "root"
end
