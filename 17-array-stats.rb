# 使用者不断输入数字存进 Array，最后输出总和、平均、最大值、最小值

arr = []
total = 0

while (true)
  print "请输入数字，结束请直接按 Enter: "
  user_input = gets
  if user_input == "\n"
    puts "break"
    max = min = arr[0]
    arr.each do |num|
      if num > max
        max = num
      end
      if num < min
        min = num
      end
    end
    average = total/arr.size.round(2)
    break
  else
    total += user_input.to_i
    arr << user_input.to_i
  end
end

puts arr.to_s

puts "总和是 #{total}"
puts "平均是 #{average}"
puts "最大值是 #{max}"
puts "最小值是 #{min}"


