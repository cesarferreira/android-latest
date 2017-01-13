require 'open-uri'
require 'oga'

class String
  def string_between_markers marker1, marker2
    self[/#{Regexp.escape(marker1)}(.*?)#{Regexp.escape(marker2)}/m, 1]
  end
end

url = 'https://gradle.org/gradle-download'
source = open(url, &:read)

document = Oga.parse_xml(source)

output = document.xpath('//div[@class="avia_textblock downloads-type"]//li/a/@href')
gradle_url = output.first.value

version = gradle_url.string_between_markers("/distributions/gradle-", "-all")

puts version
