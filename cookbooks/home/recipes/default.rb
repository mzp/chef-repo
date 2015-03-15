#
# Cookbook Name:: home
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'ruby' do
  action :install
end

git "/home/mzp/home" do
  repository "https://github.com/mzp/home"
  reference "master"
  action :sync
  user "mzp"
  group "mzp"
end

bash "install dotfiles" do
  shell = []
  Dir["/home/mzp/home/dotfiles/*"].each do|file|
    shell << "rm -rf ~mzp/.#{File.basename(file)}"
    shell << "ln -s #{file} ~mzp/.#{File.basename(file)}"
  end

  code shell.join("\n")
end

directory '/home/mzp/profiles' do
  owner 'mzp'
  group 'mzp'
  mode '0755 '
  action :create
end
