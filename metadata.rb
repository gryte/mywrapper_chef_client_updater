name 'mywrapper_chef_client_updater'
maintainer 'Adam Linkous'
maintainer_email 'alinkous+support@gmail.com'
license 'All Rights Reserved'
description 'Installs/Configures mywrapper_chef_client_updater'
long_description 'Installs/Configures mywrapper_chef_client_updater'
version '0.1.1'
supports 'centos'
chef_version '>= 12.19' if respond_to?(:chef_version)
issues_url 'https://github.com/gryte/mywrapper_chef_client_updater/issues'
source_url 'https://github.com/gryte/mywrapper_chef_client_updater'

depends 'chef_client_updater', '~> 3.3.2'
