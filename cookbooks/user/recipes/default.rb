#
# Cookbook Name:: user
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user 'mzp' do
  action :create
end

bash 'make as sudoers' do
  code 'usermod -G mzp,sudo mzp'
end

bash 'make .ssh' do
  code <<END
mkdir -p /home/mzp/.ssh
chown -R mzp:mzp /home/mzp
END
end

template '/home/mzp/.ssh/authorized_keys' do
  source 'authorized_keys'
  owner 'mzp'
  group 'mzp'
  mode '0600'
end
