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
    pos, neg, zero = 0, 0, 0
    arr.each do |a|
        if a == 0
            zero += 1
        elsif a > 0
            pos += 1
        else
            neg += 1
        end
    end
    n = arr.size.to_f
    puts (pos/n).to_f
    puts (neg/n).to_f
    puts (zero/n).to_f
end

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

plusMinus arr