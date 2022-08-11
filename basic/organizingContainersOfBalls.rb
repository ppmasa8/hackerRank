#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'organizingContainers' function below.
#
# The function is expected to return a STRING.
# The function accepts 2D_INTEGER_ARRAY container as parameter.
#

def organizingContainers(container)
    # Write your code here
    totals = container.map { |c| c.inject(:+) }
    types = container.transpose.map { |c| c.inject(:+) }
    
    totals.sort == types.sort ? "Possible" : "Impossible"
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

q = gets.strip.to_i

q.times do |q_itr|
    n = gets.strip.to_i

    container = Array.new(n)

    n.times do |i|
        container[i] = gets.rstrip.split.map(&:to_i)
    end

    result = organizingContainers container

    fptr.write result
    fptr.write "\n"
end

fptr.close()

