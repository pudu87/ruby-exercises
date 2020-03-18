def bubble_sort(array)
  (array.length).times do
    swap = 0
    (array.length-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swap += 1
      end
    end
    break array if swap == 0
  end
end

puts bubble_sort([4, 3, 78, 2, 0, 2])