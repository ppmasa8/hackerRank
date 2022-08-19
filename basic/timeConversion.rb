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
    ampm_check = s.slice!(-2, 2)
    hour = s.slice!(0, 2).to_i
    if ampm_check == "PM"
        hour += 12 if hour != 12
        s = hour.to_s + s
    elsif ampm_check == "AM"
        hour = 0 if hour == 12
        if hour < 10
            s = "0" + hour.to_s + s
        else
            s = hour.to_s + s
        end
    end
    s
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.chomp

result = timeConversion s

fptr.write result
fptr.write "\n"

fptr.close()

