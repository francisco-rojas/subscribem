$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "subscribem/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "subscribem"
  s.version     = Subscribem::VERSION
  s.authors     = ["Francisco Rojas"]
  s.email       = ["josefcorojas@gmail.com"]
  s.homepage    = "https://github.com/francisco-rojas/subscribem"
  s.summary     = 'This is a mountable engine for the app created in the "Multitenancy with Rails" book.'
  s.description = 'This is a mountable engine for the app created in the "Multitenancy with Rails" book.'
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 4.1.6"
  s.add_dependency "bcrypt", "3.1.7"
  s.add_dependency "warden", "1.2.3"
  s.add_dependency "dynamic_form", "1.1.4"
  s.add_development_dependency "factory_girl", "4.4.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails", "3.0.1"
  s.add_development_dependency "capybara", "2.3.0"
end
