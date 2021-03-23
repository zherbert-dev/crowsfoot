# -*- encoding: utf-8 -*-
# stub: rom-sql 3.3.3 ruby lib

Gem::Specification.new do |s|
  s.name = "rom-sql".freeze
  s.version = "3.3.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/rom-rb/rom-sql/issues", "documentation_uri" => "https://api.rom-rb.org/rom-sql/", "mailing_list_uri" => "https://discourse.rom-rb.org/", "source_code_uri" => "https://github.com/rom-rb/rom-sql" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Piotr Solnica".freeze]
  s.date = "2021-03-05"
  s.description = "SQL databases support for ROM".freeze
  s.email = ["piotr.solnica@gmail.com".freeze]
  s.homepage = "http://rom-rb.org".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "SQL databases support for ROM".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<sequel>.freeze, [">= 4.49"])
    s.add_runtime_dependency(%q<dry-types>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<dry-core>.freeze, ["~> 0.5", ">= 0.5"])
    s.add_runtime_dependency(%q<rom>.freeze, ["~> 5.2", ">= 5.2.1"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.9"])
  else
    s.add_dependency(%q<sequel>.freeze, [">= 4.49"])
    s.add_dependency(%q<dry-types>.freeze, ["~> 1.0"])
    s.add_dependency(%q<dry-core>.freeze, ["~> 0.5", ">= 0.5"])
    s.add_dependency(%q<rom>.freeze, ["~> 5.2", ">= 5.2.1"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.9"])
  end
end
