#
# Cookbook Name:: ats
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
git "/home/mzp/ats" do
  repository "git://git.code.sf.net/p/ats2-lang/code"
  reference "master"
  user "mzp"
  group "mzp"
end

template "/home/mzp/profiles/ats.profile" do
  source "ats.profile"
  owner "mzp"
  group "mzp"
  mode 0644
end
