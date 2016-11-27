# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "omegabk"
client_key               "#{current_dir}/omegabk.pem"
validation_client_name   "omegacorp-validator"
validation_key           "#{current_dir}/omegacorp-validator.pem"
chef_server_url          "https://api.chef.io/organizations/omegacorp"
cookbook_path            ["#{current_dir}/../cookbooks"]
cookbook_copyright       "omegacorp"
cookbook_licence         "apachev2"
cookbook_email           "omegabk@gmail.com"
