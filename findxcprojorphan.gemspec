# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'findxcprojorphan/version'

Gem::Specification.new do |spec|
  spec.name          = 'findxcprojorphan'
  spec.version       = Findxcprojorphan::VERSION
  spec.authors       = ['Manuel Wudka-Robles']
  spec.email         = ['mwudka@me.com']
  spec.summary       = %q{Finds source files unreferenced in Xcode project}
  spec.homepage      = 'https://github.com/americanexpress/findxcprojorphan'
  spec.license       = 'coil'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency('bundler', '~> 1.6')
  spec.add_development_dependency('rdoc', '~> 4.2')
  spec.add_development_dependency('aruba', '~> 0.10')
  spec.add_development_dependency('rake', '~> 10.5')
  spec.add_dependency('methadone', '~> 1.9.2')
  spec.add_dependency('xcodeproj', '~> 0.28')
end
