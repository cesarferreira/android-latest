require 'oga'
require 'fileutils'
require 'open-uri'

class String
  def string_between_markers marker1, marker2
    self[/#{Regexp.escape(marker1)}(.*?)#{Regexp.escape(marker2)}/m, 1]
  end
end

class GradleManager
  def initialize
    @gradle_url = 'https://gradle.org/gradle-download'
    @document = get_document
  end

  def to_s
    get_latest_version
  end

  def get_latest_version
    output = @document.xpath('//div[@class="avia_textblock downloads-type"]//li/a/@href')
    gradle_url = output.first.value

    version = gradle_url.string_between_markers("/distributions/gradle-", "-all")
  end

  def get_document
    handle = open(@gradle_url) {|f| f.read }
    @document = Oga.parse_xml(handle)
  end
end
