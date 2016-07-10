# change ssh port
force_override['centos']['sshd_config']['port'] = '2222'

# forbid password login
force_override['centos']['sshd_config']['PasswordAuthentication'] = 'no'
