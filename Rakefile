require 'cucumber/rake/task'
require 'rspec/core/rake_task'
require 'yaml'
require 'selenium/rake/server_task'

namespace :cuke do
  profiles = YAML::load(File.open(File.join(Dir.pwd, 'cucumber.yml'))).keys
  profiles.each do |profile|
    Cucumber::Rake::Task.new(profile.to_sym) do |t|
      t.profile = profile
      t.libs << 'lib'
    end
  end
end
