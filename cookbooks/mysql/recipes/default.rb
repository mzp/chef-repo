#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w(mysql-server libmysqld-dev).each do|mysql|
  package mysql do
    action :install
  end
end
