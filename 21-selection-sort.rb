# 给定一数组内含数字，请实作选择排序法进行排序。
# https://zh.wikipedia.org/wiki/选择排序

def selection_sort(arr)
  arr_size = arr.size
  i = 0
  while (i < arr_size-1)
    min_number = arr[i]
    star_position = i
    target_position = i

    arr.each_with_index do |num, num_index|
      if (num < min_number) && (num_index > target_position)
        min_number = num
        target_position = num_index
      end
    end

    temp = arr[star_position]
    arr[star_position] = arr[target_position]
    arr[target_position] = temp

    i += 1
  end
  arr
end

arr =  [7, 68, 42, 46, 9, 91, 77, 46, 86, 1]
answer = selection_sort(arr)

puts answer.to_s # 应该是 [1, 7, 9, 42, 46, 46, 68, 77, 86, 91]


