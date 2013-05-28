require 'logger'
require 'hashie'

require 'pinky/version'
require 'pinky/utilities'
require 'pinky/runner'

module Pinky

  def self.run(args)
    MultiJson.use(:oj)
    runtime = Pinky::Runner.new
    runtime.init(args)
    runtime.load
    runtime.exec
  end

  def self.logger
    @@logger ||= Logger.new(STDOUT)
  end

  def self.config
    @@config ||= Hashie::Mash.new
  end

end
