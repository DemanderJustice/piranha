require 'active_support'

require "piranha/version"
require "piranha/configuration"
require "piranha/checker"
require "piranha/converter"
require "piranha/merger"
require "piranha/filler"
require "piranha/splitter"
require "piranha/stamp"
require "piranha/tempfile"
require "piranha/response"

module Piranha

  def self.convert(file)
    Piranha::Converter.perform(file)
  end

  def self.merge(inputs, output)
    Piranha::Merger.perform(inputs, output)
  end

  def self.fill(template, output, datas)
    Piranha::Filler.perform(template, output, datas)
  end

  def self.split(template, output, page)
    Piranha::Splitter.perform(template, output, page)
  end

  def self.stamp(template, output, stamp)
    Piranha::Stamp.perform(template, output, stamp)
  end

end
