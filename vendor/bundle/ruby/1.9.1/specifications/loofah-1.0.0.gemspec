# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "loofah"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mike Dalessio", "Bryan Helmkamp"]
  s.date = "2010-10-26"
  s.description = "Loofah is a general library for manipulating and transforming HTML/XML\ndocuments and fragments. It's built on top of Nokogiri and libxml2, so\nit's fast and has a nice API.\n\nLoofah excels at HTML sanitization (XSS prevention). It includes some\nnice HTML sanitizers, which are based on HTML5lib's whitelist, so it\nmost likely won't make your codes less secure. (These statements have\nnot been evaluated by Netexperts.)\n\nActiveRecord extensions for sanitization are available in the\n`loofah-activerecord` gem (see\nhttp://github.com/flavorjones/loofah-activerecord)."
  s.email = ["mike.dalessio@gmail.com", "bryan@brynary.com"]
  s.extra_rdoc_files = ["MIT-LICENSE.txt", "Manifest.txt", "CHANGELOG.rdoc", "README.rdoc"]
  s.files = ["MIT-LICENSE.txt", "Manifest.txt", "CHANGELOG.rdoc", "README.rdoc"]
  s.homepage = "http://github.com/flavorjones/loofah"
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "loofah"
  s.rubygems_version = "1.8.22"
  s.summary = "Loofah is a general library for manipulating and transforming HTML/XML documents and fragments"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, [">= 1.3.3"])
      s.add_development_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_development_dependency(%q<mocha>, [">= 0.9"])
      s.add_development_dependency(%q<shoulda>, [">= 2.10"])
      s.add_development_dependency(%q<rake>, [">= 0.8"])
      s.add_development_dependency(%q<hoe>, [">= 2.6.1"])
    else
      s.add_dependency(%q<nokogiri>, [">= 1.3.3"])
      s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_dependency(%q<mocha>, [">= 0.9"])
      s.add_dependency(%q<shoulda>, [">= 2.10"])
      s.add_dependency(%q<rake>, [">= 0.8"])
      s.add_dependency(%q<hoe>, [">= 2.6.1"])
    end
  else
    s.add_dependency(%q<nokogiri>, [">= 1.3.3"])
    s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
    s.add_dependency(%q<mocha>, [">= 0.9"])
    s.add_dependency(%q<shoulda>, [">= 2.10"])
    s.add_dependency(%q<rake>, [">= 0.8"])
    s.add_dependency(%q<hoe>, [">= 2.6.1"])
  end
end
