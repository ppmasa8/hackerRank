#!/bin/ruby

require 'json'
require 'stringio'



#
# Complete the 'findMedian' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY arr as parameter.
#

def findMedian(arr)
    # Write your code here
    p arr.sort[arr.size/2]
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

result = findMedian arr

fptr.write result
fptr.write "\n"

fptr.close()
