
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jquery/cookie/legacy/rails/version"

Gem::Specification.new do |spec|
  spec.name          = "jquery-cookie-legacy-rails"
  spec.version       = Jquery::Cookie::Legacy::Rails::VERSION
  spec.authors       = ["Toshiyuki HINA"]
  spec.email         = ["thina@yourinventit.com"]

  spec.summary       = %q{Integrate jquery.cookie v1.3 assets in your Rails asset pipeline}
  spec.description   = %q{Wrap jquery.cookie v1.3 and provide the assets as a gem}
  spec.homepage      = "https://github.com/inventit/jquery-cookie-legacy-rails"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "railties"
  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
end
