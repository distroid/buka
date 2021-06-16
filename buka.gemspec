# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'buka/version'

Gem::Specification.new do |spec|
  spec.name          = 'buka'
  spec.version       = Buka::VERSION
  spec.authors       = ['Ryabov Ruslan']
  spec.email         = ['diserve.it@gmail.com']

  spec.summary       = 'Client for interact with the Partner Buka API'
  spec.description   = 'Client for interact with the Partner Buka API'
  spec.homepage      = 'https://github.com/distroid/buka'
  spec.license       = 'MIT'

  raise('RubyGems 2.0 or newer is required to protect against public gem pushes.') unless spec.respond_to?(:metadata)

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/distroid/buka.git'
  spec.metadata['changelog_uri'] = 'https://github.com/distroid/buka/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.6'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rbs', '~> 1.2.1'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 1.17'
  spec.add_development_dependency 'steep', '~> 0.44.1'
end
