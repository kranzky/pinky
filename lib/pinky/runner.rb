require 'gosu'
require 'optparse'
require 'oj'

require 'pinky/window'

module Pinky

  class Runner

    def initialize
      _start_logging
    end

    def configure(args)
      # TODO: parse config json if there
      # TODO: log to a file etc
    end

    def go!
      window = Pinky::Window.new
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
