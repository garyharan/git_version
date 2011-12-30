# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "git_version/version"

Gem::Specification.new do |s|
  s.name        = "git_version"
  s.version     = GitVersion::VERSION
  s.authors     = ["Gary Haran"]
  s.email       = ["gary.haran@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Rails engine that shows the git commit version number installed in ROOT_URL/git_version}
  s.description = %q{Simple rails engine to show the git commit version number installed}

  s.rubyforge_project = "git_version"

  s.files         = [
    'README', 
    'Gemfile', 
    'app/controllers/git_version/application_controller.rb',
    'app/controllers/git_version/versions_controller.rb',
    'config/routes.rb',
    'config.ru',
    'lib/git_version/engine.rb',
    'lib/git_version/version.rb',
    'lib/git_version.rb',
  ]
  s.require_paths = ["lib"]

  s.add_dependency "rails"
end
