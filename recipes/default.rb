#
# Cookbook:: mywrapper_chef_client_updater
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# Manage Chef Client
chef_client_updater 'Install Chef client version with post action' do
  version node['chef_client_updater']['version']
  post_install_action node['chef_client_updater']['post_install_action']
end
