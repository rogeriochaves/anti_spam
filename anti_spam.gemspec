$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "anti_spam/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "anti_spam"
  s.version     = AntiSpam::VERSION
  s.authors     = ["Rogério Chaves"]
  s.email       = ["rogeriocfj@gmail.com"]
  s.homepage    = "https://github.com/rogeriochaves/anti-spam"
  s.summary     = "Simple spam prevention"
  s.description = "Prevent spam from non-javascript bots"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4.0.0"
  s.add_dependency "railties", ">= 3.0", "< 5.0"

  s.add_development_dependency "sqlite3"
end
