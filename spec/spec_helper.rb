# Copyright 2017 Hardi Bales-Stutes
require 'chefspec'
require 'chefspec/berkshelf'
require 'rspec/teamcity'
RSpec.configure do |config|
  if (ENV['CI'] == 'TeamCity')
    config.add_formatter Spec::Runner::Formatter::TeamcityFormatter
  else
    config.formatter = :documentation
    config.color     = true
  end
end
at_exit { ChefSpec::Coverage.report! }
