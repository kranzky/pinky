require 'gosu'

require 'pinky/config'

module Pinky

  class Window < Gosu::Window

    class Config < Pinky::Config
      property :caption, default: Pinky::Utilities::get_name, :required => true
      property :width, default: 800, required: true
      property :height, default: 600, required: true
      property :fullscreen, default: false
    end

    def initialize(config)
      super config.width, config.height, config.fullscreen
      self.caption = config.caption
    end

  end

end
