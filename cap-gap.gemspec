lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cap-gap/version'
require 'English'

Gem::Specification.new do |spec|
  spec.name          = 'cap-gap'
  spec.version       = CapGAP::VERSION
  spec.authors       = ['Mission Data Developers']
  spec.email         = ['github@missiondata.com']
  spec.description   = 'Cap-GAP is a set of Capistrano addons we wanted'
  spec.summary       = 'Cap-GAP is a set of Capistrano addons we wanted'
  spec.homepage      = 'https://github.com/missiondata/cap-gap'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 2'

  spec.files         = `git ls-files`.split($RS)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'

  spec.add_dependency 'cap-ec2', git: 'https://github.com/missiondata/cap-ec2'
  spec.add_dependency 'capistrano', '>= 3.0'
end
