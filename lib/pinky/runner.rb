require 'gosu'
require 'optparse'
require 'oj'

require 'pinky/window'

module Pinky

  class Runner

    def initialize
      _start_logging
    end

    def init(args)
    end

    def load
      Pinky::config.window = Window::Config.new
    end

    def exec
      window = Window.new(Pinky::config.window)
      window.show
    end

    private

    def _start_logging
      Pinky::logger.info 'Started Pinky'
      at_exit do
        Pinky::logger.info 'Stopped Pinky'
      end
    end

  end

end
