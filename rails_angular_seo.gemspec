# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rails_angular_seo"
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["herval", "arunn"]
  s.date = "2013-05-08"
  s.description = " rails_angular_seo allows you to make your single-page apps (Backbone, Angular, etc) built on Rails SEO-friendly. It works by injecting a small rack middleware that will render pages as plain html, when the requester is one of the most common crawlers/bots out there (Google, Yahoo Baidu and Bing) "
  s.email = "arunkumar@chronus.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.txt"
  ]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.txt",
    "Rakefile",
    "VERSION",
    "lib/rails_angular_seo.rb",
    "lib/rails_angular_seo/middleware.rb",
    "lib/rails_angular_seo/rails/railtie.rb",
    "lib/rails_angular_seo/renderer.rb",
    "phantomjs/phantomjs-runner.js",
    "rails_angular_seo.gemspec",
    "spec/middleware_spec.rb",
    "spec/renderer_spec.rb"
  ]
  s.homepage = "http://github.com/arunn/rails_angular_seo"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.15"
  s.summary = "rails_angular_seo allows you to make your single-page apps (Backbone, Angular, etc) built on Rails SEO-friendly."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<phantomjs>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
    else
      s.add_dependency(%q<phantomjs>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    end
  else
    s.add_dependency(%q<phantomjs>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
  end
end

