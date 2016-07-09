require 'spec_helper'

describe file('/etc/sudoers') do
  its(:content) { should match /%wheel  ALL=(ALL)/ }
  it { should be_mode 440 }
end
