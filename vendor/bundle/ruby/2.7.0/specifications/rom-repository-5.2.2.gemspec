# -*- encoding: utf-8 -*-
# stub: rom-repository 5.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "rom-repository".freeze
  s.version = "5.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/rom-rb/rom/issues", "documentation_uri" => "https://api.rom-rb.org/rom/", "mailing_list_uri" => "https://discourse.rom-rb.org/", "source_code_uri" => "https://github.com/rom-rb/rom/tree/master/repository" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Piotr Solnica".freeze]
  s.date = "2020-03-03"
  s.description = "Repository abstraction for rom-rb".freeze
  s.email = "piotr.solnica+oss@gmail.com".freeze
  s.homepage = "http://rom-rb.org".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Repository abstraction for rom-rb".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<dry-initializer>.freeze, ["~> 3.0", ">= 3.0.1"])
    s.add_runtime_dependency(%q<dry-core>.freeze, ["~> 0.4"])
    s.add_runtime_dependency(%q<rom-core>.freeze, ["~> 5.2", ">= 5.2.2"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 11.2"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.5"])
  else
    s.add_dependency(%q<dry-initializer>.freeze, ["~> 3.0", ">= 3.0.1"])
    s.add_dependency(%q<dry-core>.freeze, ["~> 0.4"])
    s.add_dependency(%q<rom-core>.freeze, ["~> 5.2", ">= 5.2.2"])
    s.add_dependency(%q<rake>.freeze, ["~> 11.2"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.5"])
  end
end
