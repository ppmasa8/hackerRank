#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'alternate' function below.
#
# The function is expected to return an INTEGER.
# The function accepts STRING s as parameter.
#

def alternate(s)
    # Write your code here
    s.chars.uniq.combination(2).map{ |p|
        a = s.chars
        (a.uniq - p).each{|i| a.delete(i)}
        a.join =~ /(.)\1/ ? 0 : a.size
    }.max || 0
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

l = gets.strip.to_i

s = gets.chomp

result = alternate s

fptr.write result
fptr.write "\n"

fptr.close()

