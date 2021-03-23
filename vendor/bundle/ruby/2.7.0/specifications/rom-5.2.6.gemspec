# -*- encoding: utf-8 -*-
# stub: rom 5.2.6 ruby lib

Gem::Specification.new do |s|
  s.name = "rom".freeze
  s.version = "5.2.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/rom-rb/rom/issues", "documentation_uri" => "https://api.rom-rb.org/rom/", "mailing_list_uri" => "https://discourse.rom-rb.org/", "source_code_uri" => "https://github.com/rom-rb/rom" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Piotr Solnica".freeze]
  s.date = "2021-01-16"
  s.description = "Persistence and mapping toolkit for Ruby".freeze
  s.email = "piotr.solnica+oss@gmail.com".freeze
  s.homepage = "http://rom-rb.org".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Persistence and mapping toolkit for Ruby".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rom-core>.freeze, ["~> 5.2", ">= 5.2.5"])
    s.add_runtime_dependency(%q<rom-repository>.freeze, ["~> 5.2", ">= 5.2.2"])
    s.add_runtime_dependency(%q<rom-changeset>.freeze, ["~> 5.2", ">= 5.2.3"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.5"])
  else
    s.add_dependency(%q<rom-core>.freeze, ["~> 5.2", ">= 5.2.5"])
    s.add_dependency(%q<rom-repository>.freeze, ["~> 5.2", ">= 5.2.2"])
    s.add_dependency(%q<rom-changeset>.freeze, ["~> 5.2", ">= 5.2.3"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.5"])
  end
end
