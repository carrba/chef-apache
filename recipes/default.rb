#
# Cookbook:: test
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#

case node['platform_family']
when 'debian'
    package 'apache2' do
    end

    service 'apache2' do
    action [:enable, :start]
    end
when 'rhel'
   package 'httpd' do
   end

   service 'httpd' do
   action [:enable, :start]
   end
end

