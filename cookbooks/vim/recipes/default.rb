#
# Cookbook Name:: vim
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'vim' do
  action :install
end

directory '/home/mzp/.vim' do
  owner 'mzp'
  group 'mzp'
  mode '0755 '
  action :create
end

directory '/home/mzp/.vim/bundle' do
  owner 'mzp'
  group 'mzp'
  mode '0755 '
  action :create
end

git "/home/mzp/.vim/bundle/neobundle.vim" do
  repository "https://github.com/Shougo/neobundle.vim"
  reference "master"
  action :sync
  user "mzp"
  group "mzp"
end

bash "install NeoBundle" do
  code "sudo -u mzp /home/mzp/.vim/bundle/neobundle.vim/bin/neoinstall"
end
