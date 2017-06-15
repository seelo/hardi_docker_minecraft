# # encoding: utf-8
# Inspec test for recipe hardi_docker_minecraft::server
# Copyright 2017 Hardi Bales-Stutes

describe docker_container('minecraft_server') do
  it { should exist }
  it { should be_running }
  its('image') { should eq "itzg/minecraft-server:latest" }
end

