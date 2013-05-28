require 'optparse'

require 'pinky/window'

module Pinky

  class Runner

    def initialize
      _start_logging
    end

    CONFIG_FILE = 'config.json'
    def init(args)
      config = Pinky::Utilities.load_config(CONFIG_FILE)
      Pinky::config.window = Window::Config.new(config.window)
      Pinky::Utilities.save_config(CONFIG_FILE, Pinky::config)
    end

    def load
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
