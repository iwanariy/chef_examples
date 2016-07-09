user node['user']['name'] do
  home node['user']['home']
  shell node['user']['shell']
  supports :manage_home => true
  action :create
end
