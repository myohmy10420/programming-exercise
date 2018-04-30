# 请打开 wordcount.txt，计算每个单字出现的次数

doc = File.read("wordcount.txt")
h = {}
words_arr = doc.split(" ")
words_arr.each do |word|
  if !h[word]
    h.merge!({word => 1})
  else
    value = h[word] + 1
    h.merge!({word => value})
  end
end
puts h
