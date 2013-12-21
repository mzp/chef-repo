#
# Cookbook Name:: rbenv
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

%w(libssl-dev libreadline-dev).each do|name|
  package name do
    action :install
  end
end

git "/home/mzp/.rbenv" do
  repository "https://github.com/sstephenson/rbenv.git"
  reference "master"
  action :sync
  user "mzp"
  group "mzp"
end

directory '/home/mzp/.rbenv/plugins' do
  owner 'mzp'
  group 'mzp'
  mode '0755 '
  action :create
end

git "/home/mzp/.rbenv/plugins/ruby-build" do
  repository "https://github.com/sstephenson/ruby-build.git"
  reference "master"
  action :sync
  user "mzp"
  group "mzp"
end

directory '/home/mzp/profiles' do
  owner 'mzp'
  group 'mzp'
  mode '0755 '
  action :create
end

template "/home/mzp/profiles/rbenv.profile" do
  source "rbenv.profile"
  owner "mzp"
  group "mzp"
  mode 0644
end
