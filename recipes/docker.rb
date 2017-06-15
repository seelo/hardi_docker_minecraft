#
# Cookbook:: hardi_docker_minecraft
# Recipe:: default
# Copyright 2017 Hardi Bales-Stutes

docker_installation 'default' do
  action :create
end
docker_service 'default' do
  action [:create, :start]
end