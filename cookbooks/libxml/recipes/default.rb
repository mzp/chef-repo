#
# Cookbook Name:: libxml
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

%w(libxml2-dev libxslt1-dev).each do|name|
  package name do
    action :install
  end
end
