# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{vatman}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Neil Middleton"]
  s.cert_chain = ["/Users/neil/.ssh/gem-public_cert.pem"]
  s.date = %q{2010-09-24}
  s.description = %q{A gem that checks VAT numbers against the Europa web service}
  s.email = %q{neilmiddleton @nospam@ gmail.com}
  s.extra_rdoc_files = ["lib/vatman.rb"]
  s.files = ["Rakefile", "lib/vatman.rb", "test/test_helper.rb", "test/test_vatman.rb", "Manifest", "vatman.gemspec"]
  s.homepage = %q{http://github.com/neilmiddleton/vatman}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Vatman"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{vatman}
  s.rubygems_version = %q{1.3.7}
  s.signing_key = %q{/Users/neil/.ssh/gem-private_key.pem}
  s.summary = %q{A gem that checks VAT numbers against the Europa web service}
  s.test_files = ["test/test_helper.rb", "test/test_vatman.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
