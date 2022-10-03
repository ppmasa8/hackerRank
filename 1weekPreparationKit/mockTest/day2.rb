#!/bin/ruby

require 'json'
require 'stringio'



#
# Complete the 'flippingMatrix' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY matrix as parameter.
#


class Integer
    N_BYTES = [42].pack('i').size
    N_BITS = N_BYTES * 16
    MAX = 2 ** (N_BITS - 2) - 1
    MIN = -MAX - 1
end

def flippingMatrix(matrix)
    # Write your code here
    n2 = matrix.size
    n = n2 / 2
    max = 0
    total = 0
    (0...n).each do |row|
        (0...n).each do |col|
            max = Integer::MIN
            max = [matrix[row][col], max].max
            max = [matrix[row][n2 - col - 1], max].max
            max = [matrix[n2 - row - 1][col], max].max
            max = [matrix[n2 - row - 1][n2 - col - 1], max].max
            total += max
        end
    end
    total
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

q = gets.strip.to_i

q.times do |q_itr|
    n = gets.strip.to_i

    matrix = Array.new(2 * n)

    (2 * n).times do |i|
        matrix[i] = gets.rstrip.split.map(&:to_i)
    end

    result = flippingMatrix matrix

    fptr.write result
    fptr.write "\n"
end

fptr.close()
