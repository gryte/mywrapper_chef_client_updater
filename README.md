# mywrapper_chef_client_updater

This cookbook is a simple wrapper to the [chef_client_updater cookbook](https://github.com/chef-cookbooks/chef_client_updater).

# Notes

When running chef client manually with this cookbook in the runlist, please specify the 'no fork' parameter. Otherwise the run will 'hang' and have to manually be re-ran again. This is by design and the original repo referenced above has more information.

If considering running chef client as a service or cron job, then look into the existing cookbook [chef-client](https://github.com/chef-cookbooks/chef-client).
