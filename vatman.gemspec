# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "vatman/version"

Gem::Specification.new do |s|
  s.name        = "vatman"
  s.version     = Vatman::VERSION
  s.authors     = ["Neil Middleton"]
  s.email       = ["neil.middleton@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A gem that checks VAT numbers against the Europa web service}

  s.rubyforge_project = "vatman"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_runtime_dependency "savon"
  s.add_runtime_dependency "curb"
end
