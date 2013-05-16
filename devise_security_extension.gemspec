# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "devise_security_extension"
  s.version = "0.7.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marco Scholl", "Alexander Dreher"]
  s.date = "2012-11-23"
  s.description = "An enterprise security extension for devise, trying to meet industrial standard security demands for web applications."
  s.email = "team@phatworx.de"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "app/controllers/devise/password_expired_controller.rb",
    "app/views/devise/password_expired/show.html.erb",
    "config/locales/de.yml",
    "config/locales/en.yml",
    "devise_security_extension.gemspec",
    "lib/devise_security_extension.rb",
    "lib/devise_security_extension/controllers/helpers.rb",
    "lib/devise_security_extension/hooks/expirable.rb",
    "lib/devise_security_extension/hooks/password_expirable.rb",
    "lib/devise_security_extension/hooks/session_limitable.rb",
    "lib/devise_security_extension/models/expirable.rb",
    "lib/devise_security_extension/models/password_expirable.rb",
    "lib/devise_security_extension/models/secure_validatable.rb",
    "lib/devise_security_extension/models/security_questionable.rb",
    "lib/devise_security_extension/models/session_limitable.rb",
    "lib/devise_security_extension/patches.rb",
    "lib/devise_security_extension/patches/confirmations_controller_captcha.rb",
    "lib/devise_security_extension/patches/passwords_controller_captcha.rb",
    "lib/devise_security_extension/patches/registrations_controller_captcha.rb",
    "lib/devise_security_extension/patches/sessions_controller_captcha.rb",
    "lib/devise_security_extension/patches/unlocks_controller_captcha.rb",
    "lib/devise_security_extension/rails.rb",
    "lib/devise_security_extension/routes.rb",
    "lib/devise_security_extension/schema.rb",
    "lib/generators/devise_security_extension/install_generator.rb",
    "test/helper.rb",
    "test/test_devise_security_extension.rb"
  ]
  s.homepage = "http://github.com/phatworx/devise_security_extension"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Security extension for devise"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.1.1"])
      s.add_runtime_dependency(%q<devise>, [">= 2.0.0"])
      s.add_development_dependency(%q<rails_email_validator>, [">= 0"])
      s.add_development_dependency(%q<easy_captcha>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
    else
      s.add_dependency(%q<rails>, [">= 3.1.1"])
      s.add_dependency(%q<devise>, [">= 2.0.0"])
      s.add_dependency(%q<rails_email_validator>, [">= 0"])
      s.add_dependency(%q<easy_captcha>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.1.1"])
    s.add_dependency(%q<devise>, [">= 2.0.0"])
    s.add_dependency(%q<rails_email_validator>, [">= 0"])
    s.add_dependency(%q<easy_captcha>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
  end
end

