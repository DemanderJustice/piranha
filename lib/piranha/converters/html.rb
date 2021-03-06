require 'wicked_pdf'
require 'piranha/converters/converter'

module Piranha
  module Converters
    module Html
      extend Piranha::Converters::Converter

      def self.convert(input, output, options)
        executable = Piranha.configuration.executables[:wkhtmltopdf]
        ::WickedPdf.config = { exe_path: executable }

        pdf = ::WickedPdf.new.pdf_from_html_file(input, options)
        File.open(output, 'wb') { |file| file << pdf }
      end

    end
  end
end
