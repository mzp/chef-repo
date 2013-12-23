#
# Cookbook Name:: haskell
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'haskell-platform' do
  action :install
end

template "/home/mzp/profiles/haskell.profile" do
  source "haskell.profile"
  owner "mzp"
  group "mzp"
  mode 0644
end
