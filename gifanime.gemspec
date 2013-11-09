# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gifanime/version'

Gem::Specification.new do |spec|
  spec.name          = "gifanime"
  spec.version       = Gifanime::VERSION
  spec.authors       = ["Shimpei Makimoto"]
  spec.email         = ["makimoto@tsuyabu.in"]
  spec.description   = %q{Thin wrapper for RMagick's animated GIF generate feature}
  spec.summary       = %q{This gem wraps RMagick's Magick::ListImage and makes easy create animated GIFs.}
  spec.homepage      = "https://github.com/makimoto/animegif"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency "rmagick"
  spec.add_development_dependency "rake"
end

