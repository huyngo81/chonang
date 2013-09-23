# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "huyngo81"
client_key               "#{current_dir}/huyngo81.pem"
validation_client_name   "deve-validator"
validation_key           "#{current_dir}/deve-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/deve"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
http_proxy		 "http://10.10.10.10:8080"
https_proxy		 "http://10.10.10.10:8080"
