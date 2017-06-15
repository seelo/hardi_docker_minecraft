name 'hardi_docker_minecraft'
maintainer 'Hardi Stutes'
maintainer_email 'hardi@seelo.com'
license 'Apache v2.0'
description 'Installs/Configures a minecraft server with docker'
long_description 'Installs/Configures a minecraft server with docker'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)
supports 'centos', '~> 7.3'
issues_url 'http://www.seelo.com'
source_url 'http://www.seelo.com'

depends 'docker', '~> 2.15'
