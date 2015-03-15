#
# Cookbook Name:: icu
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w(libicu-dev).each do|name|
  package name do
    action :install
  end
end
