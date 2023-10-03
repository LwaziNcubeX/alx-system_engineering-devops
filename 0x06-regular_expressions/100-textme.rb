#!/usr/bin/env ruby
puts "#{ARGV[0].match(/(?<=from:)\w*/)},#{ARGV[0].match(/(?<=to:)[+]{0,1}\d*/)},#{ARGV[0].match(/(?<=flags:)[^\]]+/)}"
