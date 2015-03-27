# Cookbook Name:: dhparam
# Recipe:: default
# Generate DHE key

execute 'Generating 2048-bit DHE Keys' do
  user 'root'
  command 'openssl dhparam -out dhparam.pem 2048'
  cwd '/etc/ssl/certs'
end