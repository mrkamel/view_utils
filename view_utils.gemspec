
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "view_utils/version"

Gem::Specification.new do |spec|
  spec.name          = "view_utils"
  spec.version       = ViewUtils::VERSION
  spec.authors       = ["Benjamin Vetter"]
  spec.email         = ["benjamin.vetter@wlw.de"]

  spec.summary       = %q{Rails helpers are shitty. ViewUtils is an alternative which is as easy, but without the downsides.}
  spec.description   = %q{ViewUtils is an alternative to rails helpers. They are as easy as helpers, but don't pollute a global namespace.}
  spec.homepage      = "https://github.com/mrkamel/view_utils"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
