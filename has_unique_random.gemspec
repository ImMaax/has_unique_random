$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "has_unique_random/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name          = "has_unique_random"
  spec.version       = HasUniqueRandom::VERSION
  spec.authors       = ["Maximilian Götz"]
  spec.email         = ["contact@maxbits.net"]

  spec.summary       = %q{Unique random identifiers for Active Record models}
  spec.description   = %q{Unique random identifiers for Active Record models}
  spec.homepage      = "https://github.com/ImMaax/has_unique_random"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency  "rails", ["~> 6.0"]
  spec.add_dependency  "redcarpet", ["~> 3.5"]

  spec.add_development_dependency "sqlite3"
end
