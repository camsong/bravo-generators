# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.name          = "bravo-generators"
  gem.version       = "0.2.1"
  gem.authors       = ["Camel Song"]
  gem.email         = ["neosoyn@gmail.com"]
  gem.description   = %q{A collection of useful Rails generator scripts for scaffolding, layout files, and more.}
  gem.summary       = %q{A collection of useful Rails generator scripts}
  gem.homepage      = "https://github.com/camelsong/bravo-generators"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rails', '~> 3.1'
end
