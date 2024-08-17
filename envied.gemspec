require_relative 'lib/envied/version'

Gem::Specification.new do |spec|
  spec.name = "envied"
  spec.version = ENVied::VERSION
  spec.authors = ["Gert Goet", "Javier Julio"]
  spec.email = ["gert@thinkcreate.nl", "jjfutbol@gmail.com"]
  spec.summary = "Ensure presence and type of ENV-variables"
  spec.description = "Ensure presence and type of your app's ENV-variables."
  spec.homepage = "https://github.com/javierjulio/envied"
  spec.license = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "#{spec.homepage}.git"
  spec.metadata["bug_tracker_uri"] = "#{spec.homepage}/issues"
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/master/CHANGELOG.md"
  spec.metadata["wiki_uri"] = "#{spec.homepage}/wiki"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = Dir["README.md", "LICENSE*", "lib/**/*.rb"]
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 3.0"
end
