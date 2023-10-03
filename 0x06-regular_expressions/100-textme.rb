#!/usr/bin/env ruby
log = ARGV[0]

from = log.match(/(?<=from:)\w*/)

to = log.match(/(?<=to:)[+]{0,1}\d*/)

flags = log.match(/(?<=flags:)[^\]]+/)

output = "#{from},#{to},#{flags}"

puts output
