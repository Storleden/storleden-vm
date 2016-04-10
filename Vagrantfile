# -*- mode: ruby -*-

dir = File.dirname(File.expand_path(__FILE__))

require 'yaml'
require "#{dir}/puphpet/ruby/deep_merge.rb"
require "#{dir}/puphpet/ruby/to_bool.rb"
require "#{dir}/puphpet/ruby/puppet.rb"

configValues = YAML.load_file("#{dir}/puphpet/config.yaml")

provider = ENV['VAGRANT_DEFAULT_PROVIDER'] ? ENV['VAGRANT_DEFAULT_PROVIDER'] : 'local'
if File.file?("#{dir}/puphpet/config-#{provider}.yaml")
  custom = YAML.load_file("#{dir}/puphpet/config-#{provider}.yaml")
  configValues.deep_merge!(custom)
end

Dir.glob("#{dir}/puphpet/custom/config-*.yaml").each do |config_file|
  if File.file?(config_file)
    custom = YAML.load_file("#{config_file}")
    configValues.deep_merge!(custom)
  end
end

data = configValues['vagrantfile']

Vagrant.require_version '>= 1.8.1'

Vagrant.configure('2') do |config|
  eval File.read("#{dir}/puphpet/vagrant/Vagrantfile-#{data['target']}")
end
