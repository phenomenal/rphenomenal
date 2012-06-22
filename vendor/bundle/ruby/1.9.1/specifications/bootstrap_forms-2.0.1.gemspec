# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "bootstrap_forms"
  s.version = "2.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Seth Vargo"]
  s.date = "2012-05-07"
  s.description = "Bootstrap Forms makes Twitter's Bootstrap on Rails easy to use by creating helpful form builders that minimize markup in your views."
  s.email = "sethvargo@gmail.com"
  s.homepage = "https://github.com/sethvargo/bootstrap_forms"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.22"
  s.summary = "Bootstrap Forms makes Twitter's Bootstrap on Rails easy!"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec-rails>, ["~> 2.9.0"])
      s.add_development_dependency(%q<capybara>, ["~> 1.1.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rails>, ["~> 3.2.0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
    else
      s.add_dependency(%q<rspec-rails>, ["~> 2.9.0"])
      s.add_dependency(%q<capybara>, ["~> 1.1.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rails>, ["~> 3.2.0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec-rails>, ["~> 2.9.0"])
    s.add_dependency(%q<capybara>, ["~> 1.1.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rails>, ["~> 3.2.0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
  end
end
