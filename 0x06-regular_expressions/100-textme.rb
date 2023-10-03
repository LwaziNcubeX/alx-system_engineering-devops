#!/usr/bin/env ruby
puts "#{ARGV[0].match(/(?<=from:)[^\]]+/)},#{ARGV[0].match(/(?<=to:)[+]{0,1}[^\]]+/)},#{ARGV[0].match(/(?<=flags:)[^\]]+/)}"
