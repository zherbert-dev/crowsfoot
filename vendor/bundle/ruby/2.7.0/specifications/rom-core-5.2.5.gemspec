# -*- encoding: utf-8 -*-
# stub: rom-core 5.2.5 ruby lib

Gem::Specification.new do |s|
  s.name = "rom-core".freeze
  s.version = "5.2.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/rom-rb/rom/issues", "documentation_uri" => "https://api.rom-rb.org/rom/", "mailing_list_uri" => "https://discourse.rom-rb.org/", "source_code_uri" => "https://github.com/rom-rb/rom/tree/master/core" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Piotr Solnica".freeze]
  s.date = "2021-01-16"
  s.description = "Persistence and mapping toolkit for Ruby".freeze
  s.email = "piotr.solnica+oss@gmail.com".freeze
  s.homepage = "http://rom-rb.org".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Ruby Object Mapper".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<concurrent-ruby>.freeze, ["~> 1.1"])
    s.add_runtime_dependency(%q<dry-core>.freeze, ["~> 0.4"])
    s.add_runtime_dependency(%q<dry-inflector>.freeze, ["~> 0.1"])
    s.add_runtime_dependency(%q<dry-container>.freeze, ["~> 0.7"])
    s.add_runtime_dependency(%q<dry-equalizer>.freeze, ["~> 0.2"])
    s.add_runtime_dependency(%q<dry-types>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<dry-struct>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<dry-initializer>.freeze, ["~> 3.0", ">= 3.0.1"])
    s.add_runtime_dependency(%q<transproc>.freeze, ["~> 1.0", ">= 1.1.0"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.3"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.5"])
  else
    s.add_dependency(%q<concurrent-ruby>.freeze, ["~> 1.1"])
    s.add_dependency(%q<dry-core>.freeze, ["~> 0.4"])
    s.add_dependency(%q<dry-inflector>.freeze, ["~> 0.1"])
    s.add_dependency(%q<dry-container>.freeze, ["~> 0.7"])
    s.add_dependency(%q<dry-equalizer>.freeze, ["~> 0.2"])
    s.add_dependency(%q<dry-types>.freeze, ["~> 1.0"])
    s.add_dependency(%q<dry-struct>.freeze, ["~> 1.0"])
    s.add_dependency(%q<dry-initializer>.freeze, ["~> 3.0", ">= 3.0.1"])
    s.add_dependency(%q<transproc>.freeze, ["~> 1.0", ">= 1.1.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.3"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.5"])
  end
end
