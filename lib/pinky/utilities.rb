require 'hashie'
require 'multi_json'

module Pinky::Utilities

  def self.get_name
    File.basename(Dir.getwd).split('_').map(&:capitalize).join(' ')
  end

  def self.load_config(path)
    hash = MultiJson.load(File.read(path)) if File.exists?(path)
    Hashie::Mash.new(hash)
  end

  def self.save_config(path, config)
    return if File.exists?(path)
    File.open(path, 'wb') do |file|
      file.write(MultiJson.dump(Pinky::config, pretty: true))
    end
  end

end
