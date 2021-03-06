# -*- encoding: utf-8 -*-
# stub: api-ai-ruby 2.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "api-ai-ruby".freeze
  s.version = "2.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["api.ai".freeze]
  s.date = "2017-06-29"
  s.description = "Plugin makes it easy to integrate your Ruby application with https://api.ai natural language processing service.".freeze
  s.email = ["shingarev@api.ai".freeze]
  s.homepage = "https://api.ai".freeze
  s.licenses = ["Apache 2.0 License".freeze]
  s.required_ruby_version = Gem::Requirement.new("~> 2.0".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "ruby SDK for https://api.ai".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.7"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_runtime_dependency(%q<http>.freeze, ["~> 2.0"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<http>.freeze, ["~> 2.0"])
  end
end
