# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "fractals"
  s.version = "1.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Baxter"]
  s.date = "2010-03-08"
  s.email = "rcbaxter@gmail.com"
  s.extra_rdoc_files = ["examples.rb", "gpl-2.0.txt", "README"]
  s.files = ["examples.rb", "gpl-2.0.txt", "README"]
  s.homepage = "http://ryanbaxter.net/pages/ruby_fractal_library"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.22"
  s.summary = "A library for creating fractals in the Ruby programming language."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<chunky_png>, [">= 0.6.0"])
    else
      s.add_dependency(%q<chunky_png>, [">= 0.6.0"])
    end
  else
    s.add_dependency(%q<chunky_png>, [">= 0.6.0"])
  end
end
