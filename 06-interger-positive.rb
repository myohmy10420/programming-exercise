# 题目: 输入一个数字 x，请判断是否正数、零或负数，以及是不是偶数


print "请输入一个整数，然后按 Enter: "
x = gets.to_i

if x === 0
  number_range = "零"
elsif x > 0
  number_range = "正數"
else
  number_range = "負數"
end

if (x%2) === 0
  number_type = "偶數"
else
  number_type = "奇數"
end

puts "这个数是#{number_range}"
puts "这个数是#{number_type}"
