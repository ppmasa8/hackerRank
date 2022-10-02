#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def timeConversion(s)
    # Write your code here
    hours = s[0..1].to_i
    if s[-2..-1] == "PM"
        p hours == 12 ? s[0..-3] : "#{hours+12}#{s[2..-3]}"
    else
        p hours == 12 ? "00#{s[2..-3]}" : s[0..-3]
    end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.chomp

result = timeConversion s

fptr.write result
fptr.write "\n"

fptr.close()
