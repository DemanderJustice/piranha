require 'active_support'

require "piranha/version"
require "piranha/configuration"
require "piranha/checker"
require "piranha/converter"
require "piranha/merger"
require "piranha/filler"
require "piranha/splitter"
require "piranha/stamp"
require "piranha/infos"
require "piranha/tempfile"
require "piranha/response"

module Piranha

  def self.convert(file, options)
    Piranha::Converter.perform(file, options)
  end

  def self.merge(files)
    Piranha::Merger.perform(files)
  end

  def self.fill(template, datas)
    Piranha::Filler.perform(template, datas)
  end

  def self.split(file, pages)
    Piranha::Splitter.perform(file, pages)
  end

  def self.stamp(file, stamp, page = 0)
    Piranha::Stamp.perform(file, stamp, page)
  end

  def self.count(file)
    Piranha::Infos.perform(file, 'count')
  end
end
