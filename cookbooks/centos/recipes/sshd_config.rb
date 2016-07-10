service "sshd" do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end

template '/etc/ssh/sshd_config' do
  source 'sshd_config.erb'
  owner 'root'
  group 'root'
  mode '0600'
  variables({
    :port => node["centos"]["sshd_config"]["port"],
    :PasswordAuthentication => node["centos"]["sshd_config"]["PasswordAuthentication"]
  })
  notifies :reload, "service[sshd]"
end
