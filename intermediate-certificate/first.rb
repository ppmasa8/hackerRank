#!/bin/ruby

require 'json'
require 'stringio'



#
# Complete the 'maxPairs' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER_ARRAY skillLevel
#  2. INTEGER minDiff
#

def maxPairs(skillLevel, minDiff)
    # Write your code here
    n = skillLevel.size
    skillLevel.sort!
    list = []
    result, i, k = 0, 0, n-1
    
    (0...n/2).each do |j|
        while i < n && (skillLevel[i] - skillLevel[j]) < minDiff
            i += 1
        end
        if i >= n
            break
        end
        list << i
    end
    list = list[0..n/2-1].reverse
    list.each do |li|
        if li <= k
            result += 1
            k -= 1
        end
    end
    result
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

skillLevel_count = gets.strip.to_i

skillLevel = Array.new(skillLevel_count)

skillLevel_count.times do |i|
    skillLevel_item = gets.strip.to_i
    skillLevel[i] = skillLevel_item
end

minDiff = gets.strip.to_i

result = maxPairs skillLevel, minDiff

fptr.write result
fptr.write "\n"

fptr.close()

