module Piranha

  class Configuration
    attr_accessor :executables, :temp_directory, :format

    def initialize
      # Init executable
      @executables = {
        wkhtmltopdf: nil,
        pdftk: 'pdftk',
        libreoffice: nil
      }

      @format = :tempfile

      # Init temp directory
      @temp_directory = Dir.mktmpdir('piranha_gem')
    end

  end

  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    def configuration=(config)
      @configuration = config
    end

    def configure
      yield configuration
    end
  end

end
