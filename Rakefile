require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

RSpec::Core::RakeTask.new(:spec)

RuboCop::RakeTask.new(:rubocop) do |task|
  task.options = %w[--display-cop-names --format simple]
end

# rubocop:disable Style/SymbolArray
task default: [:spec, :rubocop]
# rubocop:enable Style/SymbolArray
