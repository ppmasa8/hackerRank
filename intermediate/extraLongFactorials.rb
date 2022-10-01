#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'extraLongFactorials' function below.
#
# The function accepts INTEGER n as parameter.
#

def extraLongFactorials(n)
    # Write your code here
    res = 1
    (2..n).each{|i| res*=i }
    p res
end

n = gets.strip.to_i

extraLongFactorials n
