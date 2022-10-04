t = gets.to_i
n = gets.to_i
arr = gets.split(" ").map(&:to_i)

p arr

k = (n + 1)/2
max = arr.max
max_id = 0
res = []
rev = []

(0...n).each do |i|
    if arr[i] == max
        max_id = i
    end
end

(0...n).each do |i|
    if i < max_id
        res << arr[i]
    elsif i == max_id
        res.sort!
        res << max
    else
        rev << arr[i]
    end
end

rev.reverse!
res << rev
res.flatten!
return res
