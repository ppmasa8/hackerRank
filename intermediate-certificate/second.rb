#!/bin/ruby

require 'json'
require 'stringio'


#
# Complete the 'sortedSum' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY a as parameter.
#

def sortedSum(a)
    # Write your code here
    result = 0
    m = 1000000000 + 7
    (0...a.size).each do |i|
        arr = a[0..i].sort
        (0..i).each do |j|
            result += arr[j] * (j+1)
        end
    end
    result % m
end
fptr = File.open(ENV['OUTPUT_PATH'], 'w')

a_count = gets.strip.to_i

a = Array.new(a_count)

a_count.times do |i|
    a_item = gets.strip.to_i
    a[i] = a_item
end

result = sortedSum a

fptr.write result
fptr.write "\n"

fptr.close()

