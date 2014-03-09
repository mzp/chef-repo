#
# Cookbook Name:: asig
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w(m4 opam ocaml-findlib libssl-dev camlp4-extra time).each do|name|
  package name do
    action :install
  end
end

git "/root/asig" do
  repository "http://github.com/mzp/asig"
end

bash "init opam" do
  code "opam init"
end

bash "build asig" do
  code <<-END
  source /root/.opam/opam-init/init.sh
  cd /root/asig && ./opam.sh && make
  END
end
