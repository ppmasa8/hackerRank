#!/bin/ruby

require 'json'
require 'stringio'

# Complete the catAndMouse function below.
def catAndMouse(x, y, z)
    x_diff, y_diff = (x-z).abs, (y-z).abs
    diff = x_diff - y_diff
    if diff == 0
        return "Mouse C"
    elsif diff > 0
        return "Cat B"
    else
        return "Cat A"
    end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

q = gets.to_i

q.times do |q_itr|
    xyz = gets.rstrip.split

    x = xyz[0].to_i

    y = xyz[1].to_i

    z = xyz[2].to_i

    result = catAndMouse x, y, z

    fptr.write result
    fptr.write "\n"
end

fptr.close()

