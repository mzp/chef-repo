#
# Cookbook Name:: dropbox
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'wget' do
  action :install
end

package 'tar' do
  action :install
end

bash "install Dropbox" do
  code <<END
cd /root && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xvzf -
mkdir -p /usr/local/bin
wget -O /usr/local/bin/dropbox.py "https://www.dropbox.com/download?dl=packages/dropbox.py"
chmod a+x /usr/local/bin/dropbox.py
END
end
