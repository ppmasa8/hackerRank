#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def miniMaxSum(arr)
    # Write your code here
    s = arr.sum
    list = []
    arr.each do |elem|
        list << s - elem
    end
    puts "#{list.min} #{list.max}"
end

arr = gets.rstrip.split.map(&:to_i)

miniMaxSum arr

