require_relative "lib/payment_gateway/version"

Gem::Specification.new do |spec|
  spec.name        = "payment_gateway"
  spec.version     = PaymentGateway::VERSION
  spec.authors     = ["andre.orvalho"]
  spec.email       = ["andre.orvalho@gmail.com"]
  spec.homepage    = "https://github.com/andreorvalho/payment_gateway"
  spec.summary     = "Summary of Payment."
  spec.description = "Description of Payment."

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/andreorvalho/payment_gateway"
  spec.metadata["changelog_uri"] = "https://github.com/andreorvalho/payment_gateway"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.4.2"
  spec.add_dependency "bootsnap"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "factory_bot_rails"
end
