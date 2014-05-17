#
# Cookbook Name:: review
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'rubygems' do
  action :install
end

gem_package 'review' do
  action :install
end

%w(texlive-lang-cjk texlive-fonts-recommended).each do|name|
  package name do
    action :install
  end
end
