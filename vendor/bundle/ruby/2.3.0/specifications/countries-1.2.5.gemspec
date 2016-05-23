# -*- encoding: utf-8 -*-
# stub: countries 1.2.5 ruby lib

Gem::Specification.new do |s|
  s.name = "countries".freeze
  s.version = "1.2.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Josh Robinson".freeze, "Joe Corcoran".freeze, "Russell Osborne".freeze]
  s.date = "2016-01-22"
  s.description = "All sorts of useful information about every country packaged as pretty little country objects. It includes data from ISO 3166".freeze
  s.email = ["hexorx@gmail.com".freeze, "russell@burningpony.com".freeze]
  s.homepage = "http://github.com/hexorx/countries".freeze
  s.rubygems_version = "2.5.2".freeze
  s.summary = "Gives you a country object full of all sorts of useful information.".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<i18n_data>.freeze, ["~> 0.7.0"])
      s.add_runtime_dependency(%q<currencies>.freeze, ["~> 0.4.2"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 3"])
      s.add_development_dependency(%q<actionview>.freeze, [">= 3"])
      s.add_development_dependency(%q<yard>.freeze, [">= 0"])
    else
      s.add_dependency(%q<i18n_data>.freeze, ["~> 0.7.0"])
      s.add_dependency(%q<currencies>.freeze, ["~> 0.4.2"])
      s.add_dependency(%q<rspec>.freeze, [">= 3"])
      s.add_dependency(%q<actionview>.freeze, [">= 3"])
      s.add_dependency(%q<yard>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<i18n_data>.freeze, ["~> 0.7.0"])
    s.add_dependency(%q<currencies>.freeze, ["~> 0.4.2"])
    s.add_dependency(%q<rspec>.freeze, [">= 3"])
    s.add_dependency(%q<actionview>.freeze, [">= 3"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
  end
end
