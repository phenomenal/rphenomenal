# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rubypython"
  s.version = "0.5.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Steeve Morin", "Austin Ziegler", "Zach Raines"]
  s.date = "2011-10-23"
  s.description = "RubyPython is a bridge between the Ruby and Python interpreters. It embeds a\nrunning Python interpreter in the Ruby application's process using FFI and\nprovides a means for wrapping, converting, and calling Python objects and\nmethods.\n\nRubyPython uses FFI to marshal the data between the Ruby and Python VMs and\nmake Python calls. You can:\n\n* Inherit from Python classes.\n* Configure callbacks from Python.\n* Run Python generators (on Ruby 1.9.2 or later)."
  s.email = ["swiuzzz+rubypython@gmail.com", "austin@rubyforge.org", "raineszm+rubypython@gmail.com"]
  s.extra_rdoc_files = ["Manifest.txt", "PostInstall.txt", "Contributors.rdoc", "History.rdoc", "License.rdoc", "README.rdoc"]
  s.files = ["Manifest.txt", "PostInstall.txt", "Contributors.rdoc", "History.rdoc", "License.rdoc", "README.rdoc"]
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.requirements = ["Python, ~> 2.4"]
  s.rubyforge_project = "rubypython"
  s.rubygems_version = "1.8.22"
  s.summary = "RubyPython is a bridge between the Ruby and Python interpreters"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ffi>, ["~> 1.0.7"])
      s.add_runtime_dependency(%q<blankslate>, [">= 2.1.2.3"])
      s.add_development_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_development_dependency(%q<rspec>, ["~> 2.0"])
      s.add_development_dependency(%q<tilt>, ["~> 1.0"])
      s.add_development_dependency(%q<hoe>, ["~> 2.12"])
    else
      s.add_dependency(%q<ffi>, ["~> 1.0.7"])
      s.add_dependency(%q<blankslate>, [">= 2.1.2.3"])
      s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_dependency(%q<rspec>, ["~> 2.0"])
      s.add_dependency(%q<tilt>, ["~> 1.0"])
      s.add_dependency(%q<hoe>, ["~> 2.12"])
    end
  else
    s.add_dependency(%q<ffi>, ["~> 1.0.7"])
    s.add_dependency(%q<blankslate>, [">= 2.1.2.3"])
    s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
    s.add_dependency(%q<rspec>, ["~> 2.0"])
    s.add_dependency(%q<tilt>, ["~> 1.0"])
    s.add_dependency(%q<hoe>, ["~> 2.12"])
  end
end
