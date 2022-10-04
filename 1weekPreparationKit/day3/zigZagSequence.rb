t = gets.to_i
n = gets.to_i
arr = gets.split(" ").map(&:to_i)

mid = n / 2
last = n - 1

max = arr[last]
arr[last] = arr[mid]
arr[mid] = max

left = mid + 1
right = last - 1

while left < right
    tmp = arr[left]
    arr[left] = arr[right]
    arr[right] = tmp

    left += 1
    right -= 1
end

puts arr.join(" ")
