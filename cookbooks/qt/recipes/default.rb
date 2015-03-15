#
# Cookbook Name:: qt
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w(qt4-qmake libqt4-dev).each do|name|
  package name do
    action :install
  end
end
