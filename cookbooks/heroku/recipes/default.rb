#
# Cookbook Name:: heroku
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'wget' do
  action :install
end

bash "install heroku toolbelt" do
  code "curl https://toolbelt.heroku.com/install-ubuntu.sh | bash"
end
