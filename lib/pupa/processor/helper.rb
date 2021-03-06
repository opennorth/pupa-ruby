module Pupa
  class Processor
    # Processor helper methods.
    module Helper
      # Normalizes all whitespace to spaces, removes consecutive spaces, and
      # strips leading and ending spaces.
      #
      # @param [String] a string
      # @return [String] a clean string
      def clean(string)
        if string
          string.gsub(/[[:space:]]/, ' ').squeeze(' ').strip
        end
      end
    end
  end
end
