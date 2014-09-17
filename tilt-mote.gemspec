# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "tilt-mote"
  spec.version       = "0.0.1"
  spec.authors       = ["Horacio Bertorello"]
  spec.email         = ["syrii@msn.com"]
  spec.summary       = "User Mote templates with Tilt."
  spec.homepage      = "https://github.com/svankmajer/tilt-mote"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ["lib"]

  spec.add_dependency "mote", "~> 1.1"
  spec.add_dependency "tilt", "~> 2.0"
end
