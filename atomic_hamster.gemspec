# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = "atomic_hamster"
  spec.version       = "1.0.0"
  spec.authors       = ["Kim Burgestrand"]
  spec.email         = ["kim@burgestrand.se"]
  spec.summary       = %q{Because naming things is sometimes funny.}
  spec.licenses      = ["MIT", "Apache 2.0"]

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "atomic"
  spec.add_runtime_dependency "hamster"
  spec.add_development_dependency "bundler", "~> 1.3"
end
