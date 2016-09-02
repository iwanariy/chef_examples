require 'spec_helper'

describe user('admin') do
  it { should exist }
  it { should have_home_directory '/home/admin' }
  it { should have_login_shell '/bin/bash' }
  it { should belong_to_group 'wheel' }
end
