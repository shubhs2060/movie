# -*- encoding: utf-8 -*-
# stub: rails-observers 0.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "rails-observers".freeze
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Rafael Mendon\u{e7}a Fran\u{e7}a".freeze, "Steve Klabnik".freeze]
  s.date = "2013-07-19"
  s.description = "Rails observer (removed from core in Rails 4.0)".freeze
  s.email = ["rafaelmfranca@gmail.com".freeze, "steve@steveklabnik.com".freeze]
  s.homepage = "https://github.com/rails/rails-observers".freeze
  s.rubygems_version = "2.5.2".freeze
  s.summary = "ActiveModel::Observer, ActiveRecord::Observer and ActionController::Caching::Sweeper extracted from Rails.".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activemodel>.freeze, ["~> 4.0"])
      s.add_development_dependency(%q<minitest>.freeze, [">= 3"])
      s.add_development_dependency(%q<railties>.freeze, ["~> 4.0"])
      s.add_development_dependency(%q<activerecord>.freeze, ["~> 4.0"])
      s.add_development_dependency(%q<actionmailer>.freeze, ["~> 4.0"])
      s.add_development_dependency(%q<actionpack>.freeze, ["~> 4.0"])
      s.add_development_dependency(%q<sqlite3>.freeze, ["~> 1.3"])
    else
      s.add_dependency(%q<activemodel>.freeze, ["~> 4.0"])
      s.add_dependency(%q<minitest>.freeze, [">= 3"])
      s.add_dependency(%q<railties>.freeze, ["~> 4.0"])
      s.add_dependency(%q<activerecord>.freeze, ["~> 4.0"])
      s.add_dependency(%q<actionmailer>.freeze, ["~> 4.0"])
      s.add_dependency(%q<actionpack>.freeze, ["~> 4.0"])
      s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3"])
    end
  else
    s.add_dependency(%q<activemodel>.freeze, ["~> 4.0"])
    s.add_dependency(%q<minitest>.freeze, [">= 3"])
    s.add_dependency(%q<railties>.freeze, ["~> 4.0"])
    s.add_dependency(%q<activerecord>.freeze, ["~> 4.0"])
    s.add_dependency(%q<actionmailer>.freeze, ["~> 4.0"])
    s.add_dependency(%q<actionpack>.freeze, ["~> 4.0"])
    s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3"])
  end
end
