#
# Cookbook Name:: atig
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w(ruby ruby-all-dev build-essential libsqlite3-dev ca-certificates).each do|name|
  package name do
    action :install
  end
end

gem_package "atig" do
  action :install
end
