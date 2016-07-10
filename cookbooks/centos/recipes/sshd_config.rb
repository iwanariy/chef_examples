template '/etc/ssh/sshd_config' do
  source 'sshd_config.erb'
  owner 'root'
  group 'root'
  mode '0600'
  variables({
    :port => node["centos"]["sshd_config"]["port"]
  })
end
