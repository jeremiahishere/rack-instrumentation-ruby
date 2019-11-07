lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rack/tracer/version"

Gem::Specification.new do |spec|
  spec.name          = "rack-instrumentation"
  spec.version       = Rack::Tracer::VERSION
  spec.authors       = ["Josh Lauer"]
  spec.email         = ["me@joshlauer.com"]

  spec.summary       = "OpenTracing instrumentation for rack"
  spec.description   = "OpenTracing instrumentation for rack"
  spec.homepage      = "https://github.com/josh-lauer/rack-instrumentation-ruby"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/josh-lauer/rack-instrumentation-ruby"
  spec.metadata["changelog_uri"] = "https://github.com/josh-lauer/rack-instrumentation-ruby/master/CHANGELOG"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "opentracing", "~> 0.5.0"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rack"
end