#
# Cookbook Name:: hardi_docker_minecraft::server
# Spec:: server
# Copyright 2017 Hardi Bales-Stutes

require 'spec_helper'

describe 'hardi_docker_minecraft::server' do
  context 'CentOS 7 with default attributes' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(platform: 'centos', version: '7.3.1611') do |node|
      end.converge(described_recipe)
    end
    it 'converges successfully' do
     expect { chef_run }.to_not raise_error
    end
#    it 'creates minecraft user' do
#      expect(chef_run).to create_user('minecraft').with(
#        'uid' => '1000',
#        'gid' => '1000',
#        'home' => '/home/minecraft',
#        'shell' => '/bin/bash')
#    end
    it 'creates minecraft data directory' do
      expect(chef_run).to create_directory('/var/opt/minecraft/data')
    end
    it 'creates minecraft mods directory' do
      expect(chef_run).to create_directory('/var/opt/minecraft/mods')
    end
    it 'creates minecraft config directory' do
      expect(chef_run).to create_directory('/var/opt/minecraft/config')
    end
    it 'creates minecraft home directory' do
      expect(chef_run).to create_directory('/home/minecraft')
    end
    it 'creates minecraft plugins directory' do
      expect(chef_run).to create_directory('/var/opt/minecraft/plugins')
    end
    it 'pulls minecraft server image' do
      expect(chef_run).to pull_docker_image('itzg/minecraft-server')
    end
    it 'creates minecraft server container' do
      expect(chef_run).to run_docker_container('minecraft_server')
    end
  end
end
