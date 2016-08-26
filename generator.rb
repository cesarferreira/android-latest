#!/usr/bin/env ruby
## encoding: utf-8
require 'pry'
require 'erubis'
require 'json'

module Container

  class Data
    def self.hash
      file = File.read('data.json')
      JSON.parse(file)
    end
  end

  class RendererClass

    def render(input_template)
      input_template = File.read(input_template)
      template = Erubis::Eruby.new(input_template)
      result = template.result hash: Data.hash
      result
    end

  end
end

if __FILE__ == $0
  include Container
  demo = RendererClass.new
  result = demo.render File.dirname(__FILE__) + "/templates/readme.erb"
  puts result

end
