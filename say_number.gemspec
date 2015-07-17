# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'say_number/version'

Gem::Specification.new do |spec|
  spec.name          = "say_number"
  spec.version       = SayNumber::VERSION
  spec.authors       = ["Fery Japminto"]
  spec.email         = ["ferydjzz@gmail.com"]

  spec.summary       = %q{a simple gem that say the given number in word.}
  spec.description   = %q{a simple gem that say the given number in word. Available in two languages, Indonesian and English. Support float number in the latest version (1.0.0).}
  spec.homepage      = "https://github.com/ferydjzz/say_number"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", "lib/say_number.rb", "lib/say_number/languages/indonesia.rb", "lib/say_number/languages/english.rb"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2"
end
