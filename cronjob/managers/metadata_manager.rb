require 'oga'
require 'fileutils'
require 'open-uri'

class MetadataManager
  def initialize metadata_path
    @metadata_path = metadata_path
    @document = get_document
  end

  def to_s
    get_latest_version
  end

  def get_latest_version
    @document.at_xpath('metadata/versioning/latest/text()').text
  end

  def get_all_versions
    version_nodes = @document.xpath('metadata/versioning/versions')

    versions = []
    version_nodes.each do |node|
      stripped = node.text.strip!
      versions.push stripped
    end

    a = versions.first.split("\n")
    a.collect{|x| x.strip || x }
  end

  def get_document
    handle = open(@metadata_path) {|f| f.read }
    @document = Oga.parse_xml(handle)
  end
end
