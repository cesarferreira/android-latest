require_relative 'managers/metadata_manager'
require_relative 'managers/gradle_manager'
require_relative 'managers/build_tools_manager'

# classpath 'com.android.tools.build:gradle:2.2.0'
# https://services.gradle.org/distributions/gradle-3.1-all.zip
# buildToolsVersion '24.0.3'
# compile 'com.android.support:support-v7:24.2.1'
# compile 'com.google.android.gms:play-services:9.6.0'

def gradle_build_tools
	build_tools_path = 'https://jcenter.bintray.com/com/android/tools/build/gradle/maven-metadata.xml'
	MetadataManager.new(build_tools_path).to_s
end

def gradle_version
	GradleManager.new().to_s
end

def build_tools_version
	BuildToolsManager.new().to_s
end

def output
	puts "classpath 'com.android.tools.build:gradle:#{gradle_build_tools}'"
	puts "https://services.gradle.org/distributions/gradle-#{gradle_version}-all.zip"
	# puts "buildToolsVersion '#{build_tools_version}'"
end

output
