#!/bin/ruby

require 'json'
require 'stringio'


#
# Complete the 'getMinCost' function below.
#
# The function is expected to return a LONG_INTEGER.
# The function accepts following parameters:
#  1. INTEGER_ARRAY crew_id
#  2. INTEGER_ARRAY job_id
#

def getMinCost(crew_id, job_id)
    # Write your code here
    c = crew_id.sort; j = job_id.sort; sum = 0

    (0...c.size).each do |i|
        sum += (c[i] - j[i]).abs
    end
    sum 
end
fptr = File.open(ENV['OUTPUT_PATH'], 'w')

crew_id_count = gets.strip.to_i

crew_id = Array.new(crew_id_count)

crew_id_count.times do |i|
    crew_id_item = gets.strip.to_i
    crew_id[i] = crew_id_item
end

job_id_count = gets.strip.to_i

job_id = Array.new(job_id_count)

job_id_count.times do |i|
    job_id_item = gets.strip.to_i
    job_id[i] = job_id_item
end

result = getMinCost crew_id, job_id

fptr.write result
fptr.write "\n"

fptr.close()

#a!/bin/ruby

require 'json'
require 'stringio'


#
# Complete the 'getMinCost' function below.
#
# The function is expected to return a LONG_INTEGER.
# The function accepts following parameters:
#  1. INTEGER_ARRAY crew_id
#  2. INTEGER_ARRAY job_id
#

def getMinCost(crew_id, job_id)
    # Write your code here
    c = crew_id.sort; j = job_id.sort; sum = 0

    (0...c.size).each do |i|
        sum += (c[i] - j[i]).abs
    end
    sum 
end
fptr = File.open(ENV['OUTPUT_PATH'], 'w')

crew_id_count = gets.strip.to_i

crew_id = Array.new(crew_id_count)

crew_id_count.times do |i|
    crew_id_item = gets.strip.to_i
    crew_id[i] = crew_id_item
end

job_id_count = gets.strip.to_i

job_id = Array.new(job_id_count)

job_id_count.times do |i|
    job_id_item = gets.strip.to_i
    job_id[i] = job_id_item
end

result = getMinCost crew_id, job_id

fptr.write result
fptr.write "\n"

fptr.close()
