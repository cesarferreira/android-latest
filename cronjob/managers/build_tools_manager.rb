require 'oga'
require 'fileutils'
require 'open-uri'
require 'pry'

class BuildToolsManager
  def initialize
    @gradle_url = 'https://dl-ssl.google.com/android/repository/repository-11.xml'
    @document = get_document
  end

  def to_s
    get_latest_version
  end

  def get_latest_version
    binding.pry
    major = @document.xpath('//sdk:sdk-repository//sdk:platform-tool[2]//sdk:revision//sdk:major').first.text
    minor = @document.xpath('//sdk:sdk-repository//sdk:platform-tool[2]//sdk:revision//sdk:minor').first.text
    micro = @document.xpath('//sdk:sdk-repository//sdk:platform-tool[2]//sdk:revision//sdk:micro').first.text

    "#{major}.#{minor}.#{micro}"
  end

  def get_document
    handle = open(@gradle_url) {|f| f.read }
    @document = Oga.parse_xml(handle)
  end
end
