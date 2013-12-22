#
# Cookbook Name:: ocamlbrew
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w(curl m4).each do|name|
  package name do
    action :install
  end
end

unless File.exist?("/home/mzp/ocamlbrew")
  bash "install ocamlbrew" do
    code "curl -kL https://raw.github.com/hcarty/ocamlbrew/master/ocamlbrew-install | bash"
  end
end

directory '/home/mzp/profiles' do
  owner 'mzp'
  group 'mzp'
  mode '0755 '
  action :create
end

template "/home/mzp/profiles/ocamlbrew.profile" do
  source "ocamlbrew.profile"
  owner "mzp"
  group "mzp"
  mode 0644
end
