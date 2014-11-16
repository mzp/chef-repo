#
# Cookbook Name:: peco
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

bash 'install peco' do
  code <<-END
wget https://github.com/peco/peco/releases/download/v0.2.0/peco_linux_amd64.tar.gz
tar xvzf peco_linux_amd64.tar.gz
mkdir -p ~mzp/bin/
mv peco_linux_amd64/peco ~mzp/bin/
  END
end
