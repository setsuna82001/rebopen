# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rebopen/version'

Gem::Specification.new do |spec|
  spec.name          = "rebopen"
  spec.version       = Rebopen::VERSION
  spec.authors       = ["setsuna82001"]
  spec.email         = ["setsuna82001@yahoo.co.jp"]

  spec.summary       = %q{Ruby on Rails 's common initializers.}
  spec.description   = %q{Ruby on Rails 's common initializers.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "binding_of_caller", ">= 0.7.2"
  spec.add_dependency "pry", ">= 0.10.4"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "nyan-cat-formatter", "~> 0.11"
  spec.add_development_dependency "tapp", "~> 1.5.0"
end
