# frozen_string_literal: true

rootdir = File.expand_path(File.dirname(__FILE__))

require "#{rootdir}/lib/thinreports/version"

Gem::Specification.new do |s|
  s.name        = 'thinreports'
  s.version     = Thinreports::VERSION
  s.author      = 'Matsukei Co.,Ltd.'
  s.email       = 'thinreports@gmail.com'
  s.summary     = 'An open source report generation tool for Ruby.'
  s.description = 'Thinreports is an open source report generation tool for Ruby.'
  s.homepage    = 'http://www.thinreports.org'
  s.license     = 'MIT'

  s.required_ruby_version = '>= 2.4.0'

  s.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^test/}) }
  end
  s.require_paths = ['lib']

  s.add_dependency 'prawn', '~> 2.2.0'
end
