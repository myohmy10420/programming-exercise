# 给定一个数组包含 Hash，请过滤和排序

arr = [
  { "name" => "Peter", "age" => 30 },
  { "name" => "John", "age" => 15 },
  { "name" => "David", "age" => 45 },
  { "name" => "Steven", "age" => 22 },
  { "name" => "Vincent", "age" => 6 },
]

h = {}
arr_size = arr.size
init_index = 0
while (init_index < arr_size)
  min_age_hash = arr[init_index]
  star_position = init_index
  target_position = init_index

  arr.each_with_index  do |hash, hash_index|
    if min_age_hash["age"] > hash["age"] && hash_index > init_index
      min_age_hash = hash
      target_position = hash_index
    end
  end

  temp = arr[star_position]
  arr[star_position] = arr[target_position]
  arr[target_position] = temp

  init_index += 1
end

puts "所有成年人，并由小到大: #{arr}"

# 答案应该是
#[
#  { "name" => "Steven", "age" => 22 },
#  { "name" => "Peter", "age" => 30 },
#  { "name" => "David", "age" => 45 }
#]
