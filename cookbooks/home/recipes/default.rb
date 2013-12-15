#
# Cookbook Name:: home
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
git "/home/mzp/home" do
  repository "git@github.com:mzp/home.git"
  reference "master"
  action :sync
  user "mzp"
  group "mzp"
end
Dir["~mzp/home/dotfiles/*"].each do|file|
  bash "install #{File.basename(file)}" do
    code <<-END
      rm -rf ~mzp/#{File.basename(file)}
      ln -s #{file} ~mzp/.#{File.basename(file)}
    END
  end
end
