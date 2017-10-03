#!/usr/bin/env jruby

abort "Usage: jruby search_jar.rb <class_name> <directory>" unless ARGV.size == 2
Dir.chdir(ARGV[1])
Dir['**/*.jar'].each do |jar|
  if File.file?(jar)
    java.util.jar.JarFile.new(jar).entries.each do |entry|
      puts "#{jar}: #{entry}\n" if entry.getName().to_s.index(ARGV[0])
    end
  end
end
