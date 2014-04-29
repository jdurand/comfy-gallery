$:.push File.expand_path("../lib", __FILE__)
require 'comfy_gallery/version'
Gem::Specification.new do |s|
  s.name        = 'comfy_gallery'
  s.version     = ComfyGallery::VERSION
  s.authors     = ["Oleg Khabarov", "The Working Group Inc"]
  s.email       = ["oleg@khabarov.ca"]
  s.homepage    = "http://github.com/comfy/comfy-gallery"
  s.summary     = "ComfyGallery is an image gallery engine for Rails 3.1 apps (and ComfortableMexicanSofa)"
  s.description = "ComfyGallery is an image gallery engine for Rails 3.1 apps (and ComfortableMexicanSofa)"
  s.license     = 'MIT'
  s.files         = `git ls-files`.split("\n")
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ['lib']

  s.add_dependency 'comfortable_mexican_sofa', '>= 1.11.0'
end

