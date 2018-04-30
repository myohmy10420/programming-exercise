# 给定一阵列内含数字，请输出 0~9 中不见的数字

def find_missing(arr)
  find_number_range = [*0..9]
  missing_number = find_number_range
  start_num = find_number_range[0]
  range_size = arr.size
  init_index = 0
  while (init_index < range_size)
    remove_index = missing_number.index(arr[init_index])
    if remove_index
      missing_number.delete_at(remove_index)
    end
    init_index += 1
  end
  missing_number
end

answer = find_missing( [2,2,1,5,8,4] )

puts answer.to_s # 应该是 [0,3,6,7,9]
