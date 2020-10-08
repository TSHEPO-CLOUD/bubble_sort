def bubble_sort(sorted_arr)
  s = sorted_arr.length
  loop do
    swap = false
    (s - 1).times do |i|
      if sorted_arr[i] > sorted_arr[i + 1]
        sorted_arr[i], sorted_arr[i + 1] = sorted_arr[i + 1], sorted_arr[i]
        swap = true
      end
    end
    break unless swap
  end
  sorted_arr
end

num = [20, 5, 8, 9]
puts bubble_sort(num)

# method with yield

def bubble_sort_by(arr)
  i = arr.length
  (i - 1).times do
    (0..(i - 2)).each do |j|
      find = yield arr[j], arr[j + 1]
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if find.positive?
    end
  end

  arr
end

test = bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
puts test
