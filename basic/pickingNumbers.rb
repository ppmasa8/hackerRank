#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'pickingNumbers' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY a as parameter.
#

def pickingNumbers(a)
    # Write your code here
    hash = Hash.new(0)
    a.each{|b| hash[b]+=1 }
    uni = a.uniq.sort
    max = 0
    uni.each{|u| max = [hash[u] + hash[u+1], max].max }
    max
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

a = gets.rstrip.split.map(&:to_i)

result = pickingNumbers a

fptr.write result
fptr.write "\n"

fptr.close()

