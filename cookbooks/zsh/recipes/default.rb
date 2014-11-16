#
# Cookbook Name:: zsh
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "zsh" do
  action :install
end

git "/home/mzp/.zaw" do
  repository "https://github.com/zsh-users/zaw"
  reference "master"
  action :sync
  user "mzp"
  group "mzp"
end
