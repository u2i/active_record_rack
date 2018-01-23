lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_record_rack/version'

Gem::Specification.new do |spec|
  spec.name = 'active_record_rack'
  spec.version = ActiveRecordRack::VERSION
  spec.authors = ['Marek Mateja']
  spec.email = ['marek.mateja@u2i.com']

  spec.summary = 'ActiveRecord connection manager for standalone (non-Rails) Rack applications'
  spec.description = 'Rack middleware managing ActiveRecord connections in standalone (non-Rails) applications'
  spec.homepage = 'https://github.com/u2i/active_record_rack'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.1'

  spec.add_dependency 'activerecord', '>= 4'

  spec.add_development_dependency 'appraisal', '~> 2'
  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3'
  spec.add_development_dependency 'rubocop', '~> 0.51'
  spec.add_development_dependency 'sqlite3', '~> 1'
end
