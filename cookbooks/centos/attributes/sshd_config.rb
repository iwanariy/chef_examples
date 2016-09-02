# change ssh port
default['centos']['sshd_config']['port'] = '2222'

# forbid password login
default['centos']['sshd_config']['PasswordAuthentication'] = 'no'
