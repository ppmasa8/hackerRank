#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr)
    # Write your code here
    i, pos, neg, zero = arr.size, 0, 0, 0
    arr.each do |elem|
        pos += 1 if elem > 0
        neg += 1 if elem < 0
        zero += 1 if elem == 0
    end
    puts pos/i.to_f
    puts neg/i.to_f
    puts zero/i.to_f
end

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

plusMinus arr

