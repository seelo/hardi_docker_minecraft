default['hardi_docker_minecraft']['server'].tap do |server|
  server['image'].tap do |image|
    image['name'] = 'itzg/minecraft-server'
    image['tag'] = 'latest'
  end
  server['container_name'] = 'minecraft_server'
  server['port'] = '25565'
  server['datadir'] = '/var/opt/minecraft/data'
  server['modsdir'] = '/var/opt/minecraft/mods'
  server['configdir'] = '/var/opt/minecraft/config'
  server['pluginsdir'] = '/var/opt/minecraft/plugins'
  server['homedir'] = '/home/minecraft'
  server['restart_policy'] = 'no'
end
