#
# Cookbook:: hardi_docker_minecraft
# Recipe:: default
# Copyright 2017 Hardi Bales-Stutes

#user 'minecraft' do
#  comment 'Minecraft'
##  uid '1000'
#  gid '1000'
##  home '/home/minecraft'
# shell '/bin/bash'
#end

directory "#{node['hardi_docker_minecraft']['server']['datadir']}" do
  recursive true
end
directory "#{node['hardi_docker_minecraft']['server']['modsdir']}" do
  recursive true
end
directory "#{node['hardi_docker_minecraft']['server']['configdir']}" do
  recursive true
end
directory "#{node['hardi_docker_minecraft']['server']['pluginsdir']}" do
  recursive true
end
directory "#{node['hardi_docker_minecraft']['server']['homedir']}" do
  recursive true
end
docker_image node['hardi_docker_minecraft']['server']['image']['name'] do
  tag node['hardi_docker_minecraft']['server']['image']['tag']
  action :pull
end
docker_container node['hardi_docker_minecraft']['server']['container_name'] do
  repo node['hardi_docker_minecraft']['server']['image']['name']
  tag node['hardi_docker_minecraft']['server']['image']['tag']
  port "#{node['hardi_docker_minecraft']['server']['port']}:25565"
  volumes [ "#{node['hardi_docker_minecraft']['server']['datadir']}:/data",
    "#{node['hardi_docker_minecraft']['server']['modsdir']}:/mods",
    "#{node['hardi_docker_minecraft']['server']['configdir']}:/config",
    "#{node['hardi_docker_minecraft']['server']['pluginsdir']}:/plugins",
    "#{node['hardi_docker_minecraft']['server']['homedir']}:/home/minecraft",
   ]
   env ['EULA=TRUE']
  restart_policy node['hardi_docker_minecraft']['server']['restart_policy']
  read_timeout 180
  kill_after 30
  action :run
end
