default[:chef_client] = {
  :chef_url => "https://chef.example.tst",
  :foreman_hook => false,
  :foreman_upload_url => "https://foreman.example.tst:8443",
  :foreman_facts_upload => true,
  :foreman_reports_upload => true,
  :chef_client_bin => "chef-client",
  :minute => 26,
  :splay => 600,
}
