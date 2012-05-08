# encoding: utf-8

# Small extensions to the String class.
module MartSearch
  module StringExtensions

    # Wrap the String at the specified width
    #
    # @param  [Integer] width - The width to wrap the string
    # @param  [String]  sep   - The separation character
    # @return [String]
    def wrap( width = 80, sep = $/ )
       res = []
       for i in 0 .. self.size / width
         res.push( self.slice( width * i, width ) )
       end
       res.join( sep )
    end
  end

  module StringExtensions2

    # colorize functions
    # see http://blog.sosedoff.com/2010/06/01/making-colorized-console-output-with-ruby/
    def red; colorize(self, "\e[1m\e[31m"); end
    def green; colorize(self, "\e[1m\e[32m"); end
    def dark_green; colorize(self, "\e[32m"); end
    def yellow; colorize(self, "\e[1m\e[33m"); end
    def blue; colorize(self, "\e[1m\e[34m"); end
    def dark_blue; colorize(self, "\e[34m"); end
    def pur; colorize(self, "\e[1m\e[35m"); end
    def colorize(text, color_code) "#{color_code}#{text}\e[0m" ; end

  end
end

class String
  include MartSearch::StringExtensions
  include MartSearch::StringExtensions2 
end
