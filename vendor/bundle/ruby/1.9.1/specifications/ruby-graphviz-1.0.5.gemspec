# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ruby-graphviz"
  s.version = "1.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Gregoire Lejeune"]
  s.date = "2012-02-06"
  s.description = "Ruby/Graphviz provides an interface to layout and generate images of directed graphs in a variety of formats (PostScript, PNG, etc.) using GraphViz."
  s.email = "gregoire.lejeune@free.fr"
  s.executables = ["dot2ruby", "gem2gv", "git2gv", "ruby2gv", "xml2gv"]
  s.extra_rdoc_files = ["README.rdoc", "COPYING.rdoc", "AUTHORS.rdoc", "CHANGELOG.rdoc"]
  s.files = ["bin/dot2ruby", "bin/gem2gv", "bin/git2gv", "bin/ruby2gv", "bin/xml2gv", "README.rdoc", "COPYING.rdoc", "AUTHORS.rdoc", "CHANGELOG.rdoc"]
  s.homepage = "http://github.com/glejeune/Ruby-Graphviz"
  s.post_install_message = "\nSince version 0.9.2, Ruby/GraphViz can use Open3.popen3 (or not)\nOn Windows, you can install 'win32-open3'\n\nYou need to install GraphViz (http://graphviz.org/) to use this Gem.\n\nFor more information about Ruby-Graphviz :\n* Doc : http://rdoc.info/projects/glejeune/Ruby-Graphviz\n* Sources : http://github.com/glejeune/Ruby-Graphviz\n* NEW - Mailing List : http://groups.google.com/group/ruby-graphviz\n\nLast (important) changes :\n* GraphViz#add_edge is deprecated, use GraphViz#add_edges\n* GraphViz#add_node is deprecated, use GraphViz#add_nodes\n* GraphViz::Edge#each_attribut is deprecated, use GraphViz::Edge#each_attribute\n* GraphViz::GraphML#attributs is deprecated, use GraphViz::GraphML#attributes\n* GraphViz::Node#each_attribut is deprecated, use GraphViz::Node#each_attribute\n  "
  s.rdoc_options = ["--title", "Ruby/GraphViz", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "ruby-asp"
  s.rubygems_version = "1.8.22"
  s.summary = "Interface to the GraphViz graphing tool"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<gems>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<gems>, [">= 0"])
      s.add_dependency(%q<rdoc>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<gems>, [">= 0"])
    s.add_dependency(%q<rdoc>, [">= 0"])
  end
end
