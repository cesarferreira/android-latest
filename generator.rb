#!/usr/bin/env ruby
## encoding: utf-8
require 'pry'
require 'erubis'

module Example

  # dummy data for testing
  class Sample
    def self.sample_list
      %w(first second thrid)
    end

    def self.sample_hash
      { first: "first value", second: "second value", thrid: "third value" }
    end
  end

  class ErubisDemo

    def render(input_template)
      input_template = File.read(input_template)
      template = Erubis::Eruby.new(input_template)
      result = template.result sample_list: Sample.sample_list,
                               sample_hash: Sample.sample_hash
      result
    end
  end
end

if __FILE__ == $0
  include Example
  demo = ErubisDemo.new
  result = demo.render File.dirname(__FILE__) + "/templates/readme.erb"
  puts result

  # Output:
  # Sample List:
  # list first
  # list second
  # list thrid
  #
  # Sample Hash:
  # hash[first] = first value
  # hash[second] = second value
  # hash[thrid] = third value
end
