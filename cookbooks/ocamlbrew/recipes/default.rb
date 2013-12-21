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

bash "install ocamlbrew" do
  code "curl -kL https://raw.github.com/hcarty/ocamlbrew/master/ocamlbrew-install | bash"
end
