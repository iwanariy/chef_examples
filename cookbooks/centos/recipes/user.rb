user node['centos']['user']['name'] do
  home node['centos']['user']['home']
  shell node['centos']['user']['shell']
  supports :manage_home => true
  action :create
end
