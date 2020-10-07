def bubble_sort(sorted_arr)
    s = sorted_arr.length
    loop do
        swap = false
        (s - 1).times do |i|
            if sorted_arr[i] > sorted_arr[i +1]
               sorted_arr[i], sorted_arr[i + 1] = sorted_arr[i + 1], sorted_arr[i]
               swap = true    
            end
        end
      break if not swap
    end
    sorted_arr

end

num = [20, 5, 8, 9]
puts bubble_sort(num)