# # encoding: utf-8

# Inspec test for recipe mywrapper_chef_client_updater::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# chef client is installed with version 14.0.202
describe package('chef') do
  it { should be_installed }
  its('version') { should eq '14.1.1-1.el7' }
end
