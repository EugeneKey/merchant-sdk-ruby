$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "merchant_samples/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "merchant_samples"
  s.version     = MerchantSamples::VERSION
  s.authors     = ["PayPal"]
  s.email       = ["DL-PP-Platform-Ruby-SDK@paypal.com"]
  s.homepage    = "https://www.x.com/"
  s.summary     = "Samples for Merchant."
  s.description = "Samples for Merchant."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2"
  s.add_dependency "paypal-sdk-merchant"
  s.add_dependency "twitter-bootstrap-rails", "~> 2.2"
  s.add_dependency "simple_form"
  s.add_dependency "haml"
  s.add_dependency "coderay"
  s.add_dependency "jquery-rails", "~> 4.3"
  s.add_dependency "jquery-ui-rails", "~> 6.0"
end
