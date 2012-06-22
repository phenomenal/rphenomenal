require 'rubygems'
require 'rake'
require 'rake/clean'
require 'rake/gempackagetask'
require 'rake/rdoctask'
require 'rake/testtask'

NAME = 'fractals'
VERS = '1.2.2'
RDOC_FILES = ['examples.rb', 'gpl-2.0.txt', 'README']

CLEAN.include ['doc/**/*', 'pkg/**/*']

task :default => [:test_units]

desc 'Cleans directories, creates documentation and gem.'
task :package => [:clean, :rdoc, :gem]

desc 'Packages and installs the gem.'
task :install do
  sh %{rake package}
  sh %{sudo gem install pkg/#{NAME}-#{VERS}}
end

desc 'Uninstalls the gem'
task :uninstall => [:clean] do
  sh %{sudo gem uninstall #{NAME}}
end

desc 'Runs unit tests.'
Rake::TestTask.new('test_units') do |test|
  test.pattern = 'test/*_test.rb'
  test.verbose = true
  test.warning = true
end

desc 'Creates the documentation.'
Rake::RDocTask.new do |rdoc|
    rdoc.rdoc_dir = 'doc'
    rdoc.options = ['--title', "Ruby Fractal Library - #{VERS}", '--inline-source']
    rdoc.main = 'README'
    rdoc.rdoc_files.add RDOC_FILES
    rdoc.rdoc_files.add 'lib/**/*.rb'
end

spec = Gem::Specification.new do |s|
  s.name = NAME
  s.version = VERS
  s.author = 'Ryan Baxter'
  s.email = 'rcbaxter@gmail.com'
  s.homepage = 'http://ryanbaxter.net/pages/ruby_fractal_library'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A library for creating fractals in the Ruby programming language.'
  s.files = %w(examples.rb gpl-2.0.txt Rakefile README) +
            Dir.glob("{doc,lib,test}/**/*")
  s.test_files = FileList['test/**/*'].to_a
  s.require_paths = ['lib']
  s.has_rdoc = true
  s.extra_rdoc_files = RDOC_FILES
  s.add_dependency('chunky_png', '>= 0.6.0')
end

desc 'Creates the gem.'
Rake::GemPackageTask.new(spec) do |pkg|
  pkg.need_tar = true
  pkg.need_zip = true
end

