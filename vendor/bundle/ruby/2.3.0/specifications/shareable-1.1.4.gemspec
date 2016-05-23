# -*- encoding: utf-8 -*-
# stub: shareable 1.1.4 ruby lib

Gem::Specification.new do |s|
  s.name = "shareable".freeze
  s.version = "1.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Hermango".freeze]
  s.date = "2014-07-27"
  s.description = "Add social sharing functionality to your Rails app with one method call. Shareable allows you the choice of displaying javascript buttons or static links. Configuration options for each social site are ready-to-use and entirely customizable. Please see readme for more details.".freeze
  s.homepage = "http://github.com/hermango/shareable".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.2".freeze
  s.summary = "Simple and unobtrusive gem for adding social links to your Rails app. Rails 3 and 4 supported.".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 3.0.0"])
      s.add_runtime_dependency(%q<actionpack>.freeze, [">= 3.0.0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 1.0.0"])
    else
      s.add_dependency(%q<activesupport>.freeze, [">= 3.0.0"])
      s.add_dependency(%q<actionpack>.freeze, [">= 3.0.0"])
      s.add_dependency(%q<bundler>.freeze, [">= 1.0.0"])
    end
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<actionpack>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.0.0"])
  end
end
