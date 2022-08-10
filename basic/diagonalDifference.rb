#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(arr)
    # Write your code here
    n = arr.size
    l, r = 0, n-1
    l_diff, r_diff = 0, 0
    while l < n
        l_diff += arr[l][l]
        l += 1
    end
    l = 0
    while r >= 0
        r_diff += arr[l][r]
        l += 1
        r -= 1
    end
    (l_diff - r_diff).abs
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

arr = Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split.map(&:to_i)
end

result = diagonalDifference arr

fptr.write result
fptr.write "\n"

fptr.close()

