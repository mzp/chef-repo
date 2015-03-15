#
# Cookbook Name:: node
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w(nodejs npm).each do |name|
  package name do
    action :install
  end
end

bash 'update alternatives' do
  code 'update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10'
end
