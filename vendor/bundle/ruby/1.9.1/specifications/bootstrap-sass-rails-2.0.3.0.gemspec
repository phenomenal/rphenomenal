# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "bootstrap-sass-rails"
  s.version = "2.0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Morton Jonuschat"]
  s.date = "2012-05-16"
  s.description = "Bootstrap is Twitter's toolkit for kickstarting CSS for websites, apps, and more. It includes base CSS styles for typography, forms, buttons, tables, grids, navigation, alerts, and more."
  s.email = ["yabawock@gmail.com"]
  s.homepage = "https://github.com/yabawock/bootstrap-sass-rails"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.22"
  s.summary = "HTML, CSS, and JS toolkit from Twitter converted to Sasss and the Rails asset pipeline"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 3.1"])
      s.add_runtime_dependency(%q<sass-rails>, ["~> 3.1"])
      s.add_development_dependency(%q<rake>, ["~> 0.9.2"])
    else
      s.add_dependency(%q<rails>, ["~> 3.1"])
      s.add_dependency(%q<sass-rails>, ["~> 3.1"])
      s.add_dependency(%q<rake>, ["~> 0.9.2"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 3.1"])
    s.add_dependency(%q<sass-rails>, ["~> 3.1"])
    s.add_dependency(%q<rake>, ["~> 0.9.2"])
  end
end
