#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'gradingStudents' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY grades as parameter.
#

def gradingStudents(grades)
    # Write your code here
    final = []
    grades.each do |grade|
        if grade < 38
            final << grade
        elsif grade % 5 == 4
            final << grade + 1
        elsif grade % 5 == 3
            final << grade + 2
        elsif grade % 5 == 2 || grade % 5 == 1 || grade % 5 == 0
            final << grade
        end
    end
    final
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

grades_count = gets.strip.to_i

grades = Array.new(grades_count)

grades_count.times do |i|
    grades_item = gets.strip.to_i
    grades[i] = grades_item
end

result = gradingStudents grades

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()

