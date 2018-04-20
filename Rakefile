desc 'Define default task'
task default: [:cookstyle, :foodcritic]

desc 'Run cookstyle'
task :cookstyle do
  sh 'cookstyle'
end

desc 'Run foodcritic in current directory'
task :foodcritic do
  sh 'foodcritic . --tags ~FC078'
end

desc 'Knife upload mywrapper_chef_client_updater cookbook to test environment'
task :upload_test do
  sh 'knife cookbook upload -o .. mywrapper_chef_client_updater -E test --force'
end

desc 'Knife upload mywrapper_chef_client_updater cookbook to prod environment'
task :upload_prod do
  sh 'knife cookbook upload -o .. mywrapper_chef_client_updater -E prod'
end

desc 'Delete testserver node'
task :deletenode_test do
  sh 'knife node delete testserver -y'
end

desc 'Delete testserver client'
task :deleteclient_test do
  sh 'knife client delete testserver -y'
end

desc 'Remove testserver from chef server'
task remove_test: [:deletenode_test, :deleteclient_test]

desc 'Bootstrap test server'
task bootstrap_test: [:upload_test] do
  sh 'knife bootstrap 192.168.1.234 -E test -N testserver -r mywrapper_chef_client_updater --sudo --ssh-user test --ssh-password test --use-sudo-password --bootstrap-version 14.0.202'
end