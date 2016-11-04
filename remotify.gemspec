# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'remotify/version'

Gem::Specification.new do |spec|
  spec.name          = 'remotify'
  spec.version       = Remotify::VERSION
  spec.authors       = ['msfukui']
  spec.email         = ['msfukui@gmail.com']

  spec.summary       = 'Send notifier messages.'
  spec.description   = 'Send notifier messages from a remote terminal to local host.'
  spec.homepage      = 'https://github.com/msfukui/remotify'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
