# frozen_string_literal: true

require_relative "lib/ipgeobase/version"

Gem::Specification.new do |spec|
  spec.name = "ipgeobase"
  spec.version = Ipgeobase::VERSION
  spec.authors = ["Vlad Khamitskiy"]
  spec.email = ["vladislaviktorovic@gmail.com"]
  spec.summary = "Gem to return IP metadate"
  spec.description = "Gem returns information about the city, country, country code, latitude and longitude of the IP address"
  spec.homepage = "https://github.com/khamitskiy-vlad/ipgeobase"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/khamitskiy-vlad/ipgeobase"
  spec.metadata["changelog_uri"] = "https://github.com/khamitskiy-vlad/ipgeobase"
  spec.metadata["rubygems_mfa_required"] = "true"

  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
