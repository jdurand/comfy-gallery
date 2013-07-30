# Loading engine only if this is not a standalone installation
unless defined? ComfyGallery::Application
  require File.expand_path('comfy_gallery/engine', File.dirname(__FILE__))
end

[ 'comfy_gallery/configuration',
  'comfy_gallery/routing',
  'comfy_gallery/form_builder',
  'paperclip_processors/cropper'
].each do |path|
  require File.expand_path(path, File.dirname(__FILE__))
end

module ComfyGallery
  class << self
    
    def configure
      yield configuration
    end
    
    def configuration
      @configuration ||= Configuration.new
    end
    alias :config :configuration
    
  end
end