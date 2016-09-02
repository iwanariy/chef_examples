centos
======
This is a recipe for basic centos server

## Getting started
### Chef
1. create node json file.
  ```
	{
	  "name": "centos",
	  "run_list": [
	    "role[centos]"
	  ],
	}
  ```
2. execute following command.
  ```
  chef-client -z -j nodes/<node>.json
  ```

### Serverspec
1. execute following command.
  ```
  cd chef_repo/cookbooks/centos
  rake spec
  ```
