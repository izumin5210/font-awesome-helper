$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "font-awesome-helper/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "font-awesome-helper"
  s.version     = FontAwesomeHelper::VERSION
  s.authors     = ["Masayuki IZUMI"]
  s.email       = ["masayuki@izumin.info"]
  s.homepage    = "https://github.com/izumin5210/font-awesome-helper"
  s.summary     = "Useful helper for Font Awesome."
  s.description = "Provide useful helper methods for Font Awesome."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end
