# -*- encoding: utf-8 -*-
# stub: get_process_mem 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "get_process_mem".freeze
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Richard Schneeman".freeze]
  s.date = "2014-06-16"
  s.description = " Get memory usage of a process in Ruby ".freeze
  s.email = ["richard.schneeman+rubygems@gmail.com".freeze]
  s.homepage = "https://github.com/schneems/get_process_mem".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.2".freeze
  s.summary = "Use GetProcessMem to find out the amount of RAM used by any process".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.1"])
    else
      s.add_dependency(%q<rake>.freeze, ["~> 10.1"])
    end
  else
    s.add_dependency(%q<rake>.freeze, ["~> 10.1"])
  end
end
