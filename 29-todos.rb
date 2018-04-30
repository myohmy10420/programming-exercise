# 简易 Todo 代办事项应用

text = File.read("todos.txt")

todos = []
text.each_line do |line|
  todos << line.chomp
end

def show_todo_list(todos)
  todos.each_with_index do |todo, index|
    puts "#{index}: #{todo}"
  end
end

while (true)
  show_todo_list(todos)
  print "请输入指令 1. add 2. remove 3. save，然后按 Enter: "
  command = gets.chomp

  if command == "add" || command == "1"
    print "请输入代办事项: "
    event = gets.chomp
    todos.push(event)
  elsif command == "remove" || command == "2"
    print "请输入要删除的编号: "
    remove_index = gets.to_i
    todos.delete(todos[remove_index])
  elsif command == "save"
    puts "存盘离开"
    File.open("todos.txt", "w+") do |f|
      todos.each do |old_event|
        f << old_event
        f << "\n"
      end
    end
    break;
  else
    puts "看不懂，请再输入一次"
  end
end

