def merge_sort(array)
  s = array.size - 1
  return array if s < 1
  a = merge_sort(array[0..(s/2)])
  b = merge_sort(array[(s/2+1)..-1])
  array = []
  a[0] < b[0] ? array << a.shift : array << b.shift until a.empty? || b.empty?
  array + a + b
end

p merge_sort([5, 7, 2, 8, 1, 4, 6, 3])
p merge_sort([5, 7, -1, 8, 0, 3, -5, 3, -7])