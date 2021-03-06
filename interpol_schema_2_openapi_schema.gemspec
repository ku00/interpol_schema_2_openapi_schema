require_relative 'lib/interpol_schema_2_openapi_schema/version'

Gem::Specification.new do |spec|
  spec.name          = "interpol_schema_2_openapi_schema"
  spec.version       = InterpolSchema2OpenapiSchema::VERSION
  spec.authors       = ["ku00"]
  spec.email         = ["skentaro36@gmail.com"]

  spec.summary       = %q{Convert Interpol definition to OpenAPI definition.}
  spec.description   = %q{Convert Interpol definition to OpenAPI definition.}
  spec.homepage      = "https://github.com/ku00/interpol_schema_2_openapi_schema"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.1")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ku00/interpol_schema_2_openapi_schema"
  spec.metadata["changelog_uri"] = "https://github.com/ku00/interpol_schema_2_openapi_schema"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "thor", "~> 1.0.0"

  spec.add_development_dependency "bundler", "~> 2.1.0"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
