#
# Cookbook Name:: home
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
git "/home/mzp/home" do
  repository "https://github.com/mzp/home"
  reference "master"
  action :sync
  user "mzp"
  group "mzp"
end
Dir["/home/mzp/home/dotfiles/*"].each do|file|
  bash "install #{File.basename(file)}" do
    code <<-END
      rm -rf ~mzp/.#{File.basename(file)}
      ln -s #{file} ~mzp/.#{File.basename(file)}
    END
  end
end

directory '/home/mzp/profiles' do
  owner 'mzp'
  group 'mzp'
  mode '0755 '
  action :create
end
