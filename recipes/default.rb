#
# Cookbook Name:: elasticsearch_chef_demo
# Recipe:: default
#

elasticsearch_user 'elasticsearch'

elasticsearch_install 'elasticsearch' do
type :package
version "5.0.0"
action :install
end

elasticsearch_configure 'elasticsearch' do
allocated_memory '256m'
configuration ({
'cluster.name' => 'elastic-cluster-demo'
})
end

elasticsearch_service 'elasticsearch' do
service_actions [:enable, :start]
end
