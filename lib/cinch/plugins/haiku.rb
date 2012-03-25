require 'open-uri'
require 'nokogiri'

module Cinch
  module Plugins
    class Haiku
      include Cinch::Plugin

      match "haiku"
      def execute(m)
        html = Nokogiri::HTML(open("http://www.dailyhaiku.org/haiku/?pg=#{rand(220) + 1}"))
        haikus = html.search('p.haiku').to_a
        haiku_lines = haikus.sample.text.split(/[\r\n]+/)

        width = haiku_lines.inject(0) { |max, line|
          [line.length, max].max
        }

        haiku_lines.each do |line|
          sleep config[:delay] if config[:delay]
          m.reply('     ' + line.center(width))
        end
      end
    end
  end
end
