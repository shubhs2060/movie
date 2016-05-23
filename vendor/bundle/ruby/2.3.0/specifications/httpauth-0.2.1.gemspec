# -*- encoding: utf-8 -*-
# stub: httpauth 0.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "httpauth".freeze
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Manfred Stienstra".freeze]
  s.date = "2014-01-20"
  s.description = "Library for the HTTP Authentication protocol (RFC 2617)".freeze
  s.email = "manfred@fngtpspec.com".freeze
  s.extra_rdoc_files = ["README.md".freeze, "LICENSE".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze]
  s.homepage = "https://github.com/Manfred/HTTPauth".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--charset=utf-8".freeze]
  s.rubygems_version = "2.5.2".freeze
  s.summary = "HTTPauth is a library supporting the full HTTP Authentication protocol as specified in RFC 2617; both Digest Authentication and Basic Authentication.".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
  end
end
