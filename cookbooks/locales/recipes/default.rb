#
# Cookbook Name:: locales
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "locales" do
  action :install
end

bash "setup UTF-8" do
  code "localedef -f UTF-8 -i ja_JP ja_JP"
end
