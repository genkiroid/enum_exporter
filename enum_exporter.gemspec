$:.push File.expand_path("lib", __dir__)

require "enum_exporter/version"

Gem::Specification.new do |s|
  s.name        = "enum_exporter"
  s.version     = EnumExporter::VERSION
  s.authors     = ["genkiroid"]
  s.email       = ["gamurai@gmail.com"]
  s.homepage    = "https://github.com/genkiroid/enum_exporter"
  s.summary     = "EnumExporter is rake task that exports defined enums as some formats."
  s.description = "EnumExporter is rake task that exports defined enums as some formats."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_development_dependency "rails"
  s.add_development_dependency "sqlite3"
end
