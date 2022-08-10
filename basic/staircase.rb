#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'staircase' function below.
#
# The function accepts INTEGER n as parameter.
#

def staircase(n)
    # Write your code here
    list = []
    (1..n).each do |i|
        list << " " * (n - i) + "#" * i
    end
    puts list
end

n = gets.strip.to_i

staircase n

