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
    sum = arr.sum
    res = []
    arr.each{|a| res << sum - a }
    puts "#{res.min} #{res.max}"
end

arr = gets.rstrip.split.map(&:to_i)

miniMaxSum arr