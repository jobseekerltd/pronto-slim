# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pronto/slim/version'

Gem::Specification.new do |s|
  s.name          = 'pronto-slim'
  s.version       = Pronto::SlimLintVersion::VERSION
  s.platform      = Gem::Platform::RUBY
  s.authors       = ['Thomas Nys']
  s.email         = ['nysthee@gmail.com']
  s.homepage      = 'https://github.com/nysthee/pronto-slim'
  s.summary       = 'Pronto runner for SLIM-Lint, tool for writing clean
                     and consistent SLIM'

  s.licenses = ['MIT']
  s.required_ruby_version = '>= 2.0.0'
  s.rubygems_version = '1.8.23'

  s.files = `git ls-files`.split($RS).reject do |file|
    file =~ %r{^(?:
    spec/.*
    |Gemfile
    |Rakefile
    |\.rspec
    |\.gitignore
    |\.rubocop.yml
    |\.travis.yml
    )$}x
  end

  s.test_files = []
  s.extra_rdoc_files = ['LICENSE', 'README.md']
  s.require_paths = ['lib']

  s.add_runtime_dependency('pronto', '~> 0.9.2')
  s.add_runtime_dependency('slim_lint', '~> 0.12.0')
  s.add_development_dependency('rake', '~> 12.0')
  s.add_development_dependency('rspec', '~> 3.5')
  s.add_development_dependency('rspec-its', '~> 1.2')
end
