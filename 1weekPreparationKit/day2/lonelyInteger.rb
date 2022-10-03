#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'lonelyinteger' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY a as parameter.
#

def lonelyinteger(a)
    # Write your code here
    hash = Hash.new(0)
    a.each do |num|
        hash[num] += 1
    end
    hash.each do |k,v|
        if v == 1
            return k
        end
    end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

a = gets.rstrip.split.map(&:to_i)

result = lonelyinteger a

fptr.write result
fptr.write "\n"

fptr.close()
