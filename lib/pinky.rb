require 'logger'

require 'pinky/version'
require 'pinky/runner' 

module Pinky

  def self.run(args)
    runtime = Pinky::Runner.new
    runtime.configure(args)
    runtime.go!
  end

  def self.logger
    @@logger ||= Logger.new(STDOUT)
  end

end
