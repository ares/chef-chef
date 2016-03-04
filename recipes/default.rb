if node[:chef_client][:foreman_hook]
  gem 'chef_handler_foreman'
end

template "/etc/chef/client.rb" do
  mode '0644'
  source 'client.rb.erb'
  owner node[:user] || 'root'
  group node[:user] || 'root'
  variables :chef_url => node[:chef_client][:chef_url], :foreman_hook => node[:chef_client][:foreman_hook]
end

cron "chef_client" do
  minute        node[:chef_client][:minute]
  action        :create
  command       "ionice -c 3 nice -n 20 #{node[:chef_client][:chef_client_bin]} --once --splay #{node[:chef_client][:splay]}"
end
