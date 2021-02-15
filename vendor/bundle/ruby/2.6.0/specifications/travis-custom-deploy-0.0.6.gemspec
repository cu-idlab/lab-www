# -*- encoding: utf-8 -*-
# stub: travis-custom-deploy 0.0.6 ruby lib

Gem::Specification.new do |s|
  s.name = "travis-custom-deploy".freeze
  s.version = "0.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jens Nazarenus".freeze]
  s.date = "2014-01-22"
  s.description = "Deploy your ruby based applications to your own servers".freeze
  s.email = ["me@jens-na.de".freeze]
  s.executables = ["travis-custom-deploy".freeze]
  s.files = ["bin/travis-custom-deploy".freeze]
  s.homepage = "https://github.com/jens-na/travis-custom-deploy".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Travis custom deployment gem".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<net-sftp>.freeze, ["~> 2.1.2"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.14.1"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.1.1"])
      s.add_development_dependency(%q<redgreen>.freeze, ["~> 1.2.2"])
      s.add_development_dependency(%q<shoulda-context>.freeze, ["~> 1.1.6"])
      s.add_development_dependency(%q<rr>.freeze, ["~> 1.1.2"])
      s.add_development_dependency(%q<coveralls>.freeze, ["~> 0.7.0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry-nav>.freeze, [">= 0"])
    else
      s.add_dependency(%q<net-sftp>.freeze, ["~> 2.1.2"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.14.1"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.1.1"])
      s.add_dependency(%q<redgreen>.freeze, ["~> 1.2.2"])
      s.add_dependency(%q<shoulda-context>.freeze, ["~> 1.1.6"])
      s.add_dependency(%q<rr>.freeze, ["~> 1.1.2"])
      s.add_dependency(%q<coveralls>.freeze, ["~> 0.7.0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<pry-nav>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<net-sftp>.freeze, ["~> 2.1.2"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.14.1"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.1.1"])
    s.add_dependency(%q<redgreen>.freeze, ["~> 1.2.2"])
    s.add_dependency(%q<shoulda-context>.freeze, ["~> 1.1.6"])
    s.add_dependency(%q<rr>.freeze, ["~> 1.1.2"])
    s.add_dependency(%q<coveralls>.freeze, ["~> 0.7.0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<pry-nav>.freeze, [">= 0"])
  end
end
