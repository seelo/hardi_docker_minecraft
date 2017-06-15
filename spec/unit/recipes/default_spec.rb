#
# Cookbook:: hardi_docker_minecraft
# Spec:: default
# Copyright 2017 Hardi Bales-Stutes

require 'spec_helper'

describe 'hardi_docker_minecraft::default' do
  context 'When all attributes are default, on an Centos 7.3.1611' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '7.3.1611')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
