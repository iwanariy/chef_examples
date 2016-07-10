require 'spec_helper'

describe file('/etc/ssh/sshd_config') do
  its(:content) { should match /Port 2222/ }
  its(:content) { should match /PasswordAuthentication no/ }
  it { should be_mode 600 }
end
