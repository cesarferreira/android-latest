#!/usr/bin/env ruby
## encoding: utf-8
require 'erubis'
require 'json'
require 'colorize'

module Container

  class Data
    def self.hash
      JSON.parse(File.read('data.json'))
    end
  end

  class RendererClass
    def render(input_template)
      input_template = File.read(input_template)
      template = Erubis::Eruby.new(input_template)
      template.result hash: Data.hash
    end
  end
end

def generate(template, destination)
  renderer = RendererClass.new
  result = renderer.render File.dirname(__FILE__) + "/templates/#{template}"

  File.open(destination, "w") do |f|
    f.write(result)
  end

  puts "> was saved here: #{destination.green}"
end

def generate_readme
  puts "Generating ".green + 'README.md'.yellow
  generate 'readme.erb', 'generated/README.md'
  generate 'readme.erb', 'README.md'
end

def generate_build_gradle
  puts "Generating ".green + 'build.gradle'.yellow
  generate 'build.gradle.erb', 'generated/build.gradle'
end

def generate_html
  puts "Generating ".green + 'index.html'.yellow
  generate 'html.erb', 'generated/index.html'
  generate 'html.erb', 'index.html'
end

############ GENERATOR ############

if __FILE__ == $0
  include Container

  Dir.mkdir("generated") unless File.exists?("generated")

  generate_readme
  generate_html
  generate_build_gradle

end
