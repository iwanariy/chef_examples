require 'spec_helper'

describe file('/etc/sudoers') do
  its(:content) { should match /%wheel  ALL=(ALL)/ }
end
