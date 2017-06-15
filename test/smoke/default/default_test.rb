# # encoding: utf-8
# Inspec test for recipe hardi_docker_minecraft::default
# Copyright 2017 Hardi Bales-Stutes

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should_not be_listening }
end
