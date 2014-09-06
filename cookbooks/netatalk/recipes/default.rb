#
# Cookbook Name:: nfs
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w(
  cracklib-devel
  openssl-devel
  quota-devel
  libtool
  automake
  autoconf
  db4-devel
  pam-devel
  tcp_wrappers-devel
  libgcrypt-devel
  avahi-devel
  libacl-devel
  openldap-devel
  dbus-devel
  dbus-glib-devel
  glib2-devel
  systemtap-sdt-devel
  libtdb-devel
  mysql-devel
  tar
  rpm-build
).each do|pkg|
  package pkg do
    action :install
  end
end

bash "build netatalk" do
  code <<-END
rpm -ivh http://www003.upp.so-net.ne.jp/hat/files/netatalk-3.1.6-0.0.1.el6.src.rpm
cd ~/rpmbuild/SPECS/
rpmbuild -bb netatalk.spec
cd ~/rpmbuild/RPMS/x86_64/
rpm -ivh netatalk-3.1.6-0.0.1.el6.x86_64.rpm
  END
end

template '/etc/afp.conf' do
  source "afp.conf.erb"
  owner "root"
  group "root"
end

%w(avahi-daemon avahi-dnsconfd netatalk).each do|svc|
  service svc do
    action [:enable, :start]
  end
end

