require 'open-uri'
require 'oga'
require 'pry'

url = 'https://dl-ssl.google.com/android/repository/repository-11.xml'
source = open(url, &:read)

document = Oga.parse_xml(source)

major = document.xpath('//sdk:sdk-repository//sdk:platform-tool[2]//sdk:revision//sdk:major').first.text
minor = document.xpath('//sdk:sdk-repository//sdk:platform-tool[2]//sdk:revision//sdk:minor').first.text
micro = document.xpath('//sdk:sdk-repository//sdk:platform-tool[2]//sdk:revision//sdk:micro').first.text

puts "buildToolsVersion '#{major}.#{minor}.#{micro}'"
