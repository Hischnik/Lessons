# eval( " x += 1 " ) # выполняет строку как код...

# типа мини IRB
line_num = 0
input = ""

loop do
  print "#{line_num += 1}?: "
  line = gets
  break if line.strip == "exit"

  if line.strip == ""
    puts "///"
    puts eval(input)
    input = ""
  else
    input += line
  end

end

foo.instance_eval('@bar') # дает доступ к внутренности экземпляра класса
# так же можно и привате методы юзать
# может принимать блоки

class_eval

module_eval

class Y
  @@y = 12
end

Y.class_variables # покажет все переменные класса...
# есть еще гет и сет
# есть и для instance !!!!!



