# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xmpush/version'

Gem::Specification.new do |spec|
  spec.platform      = Gem::Platform::RUBY
  spec.name          = "xmpush"
  spec.version       = Xmpush::VERSION
  spec.authors       = ["blackanger"]
  spec.email         = ["blackanger.z@gmail.com"]
  spec.summary       = %q{XiaoMi push Ruby Server SDK.}
  spec.description   = %q{XiaoMi push Ruby Server SDK}
  spec.homepage      = "https://github.com/Ruby-Study/xmpush"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
