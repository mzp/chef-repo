#
# Cookbook Name:: ajhc
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w(make locales autoconf
  libconfig-yaml-perl graphviz haskell-platform cpphs pandoc hscolour po4a
  libghc-temporary-dev libghc-haskeline-dev libghc-utf8-string-dev libghc-hssyck-dev
  libghc-test-framework-th-dev libghc-test-framework-hunit-dev
  libghc-test-framework-quickcheck2-dev libghc-uniplate-dev libgc-dev gcc valgrind).each do|name|
    package name do
      action :install
    end
end

bash "install DrIFT" do
  code "sudo -u mzp cabal install drift"
end

git "/home/mzp/ajhc" do
  repository "https://github.com/ajhc/ajhc.git"
  reference "arafura"
  user "mzp"
  group "mzp"
end
