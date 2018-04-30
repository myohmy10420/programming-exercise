# 题目: 输入一个数字 N，输出 N * N 乘法表

print "请输入数字 N，然后按 Enter: "
n = gets.to_i
i = 1

while (i <= n)
  total = (i*n).to_s
  puts "#{i} x #{n} = #{total}"
  i +=  1
end

