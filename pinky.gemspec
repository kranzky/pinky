# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pinky/version'

Gem::Specification.new do |spec|
  spec.name          = 'pinky'
  spec.version       = Pinky::VERSION
  spec.authors       = ['kranzky']
  spec.email         = ['kranzky@rockethands.com']
  spec.description   = %q{Pinky is a game prototyping engine}
  spec.summary       = %q{Pinky is a game prototyping engine}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rspec', '~> 2.13'
  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_dependency 'oj', '~> 2.0'
  spec.add_dependency 'hashie', '~> 2.0'
  spec.add_dependency 'gosu', '~> 0.7'
  spec.add_dependency 'chipmunk', '~> 5.3'
end
