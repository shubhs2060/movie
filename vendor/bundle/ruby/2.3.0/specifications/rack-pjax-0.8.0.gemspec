# -*- encoding: utf-8 -*-
# stub: rack-pjax 0.8.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rack-pjax".freeze
  s.version = "0.8.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Gert Goet".freeze]
  s.date = "2014-08-15"
  s.description = "Serve pjax responses through rack middleware".freeze
  s.email = ["gert@thinkcreate.nl".freeze]
  s.homepage = "https://github.com/eval/rack-pjax".freeze
  s.rubyforge_project = "rack-pjax".freeze
  s.rubygems_version = "2.5.2".freeze
  s.summary = "Serve pjax responses through rack middleware".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>.freeze, ["~> 1.1"])
      s.add_runtime_dependency(%q<nokogiri>.freeze, ["~> 1.5"])
    else
      s.add_dependency(%q<rack>.freeze, ["~> 1.1"])
      s.add_dependency(%q<nokogiri>.freeze, ["~> 1.5"])
    end
  else
    s.add_dependency(%q<rack>.freeze, ["~> 1.1"])
    s.add_dependency(%q<nokogiri>.freeze, ["~> 1.5"])
  end
end
