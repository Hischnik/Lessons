# Задание 1
# puts "Как тебя зовут?"
# name = gets.chomp
# 
# puts "Какой у тебя рост?"
# growth = gets.to_i
# 
# growth = growth - 110
# 
# if growth <= 0
#   puts "Капец ты низкий =)"
# else
#   puts "#{name}, привет! =), Твой идеальный вес: #{growth} кг!"
# end


# Задание 2
# puts "Основание треугольника:"
# a = gets.to_f
# 
# puts "Высота треугольника:"
# h = gets.to_f
# 
# puts "Площадь треугольника: #{ 1.0 / 2 * a * h}"


# Задание 3
# puts "Сторона a:"
# a = gets.to_f
# 
# puts "Сторона b:"
# b = gets.to_f
# 
# puts "Сторона c:"
# c = gets.to_f
# 
# if a > b && a > c
#   long = a
#   long_a = b
#   long_b = c
# elsif b > a && b > c
#   long = b
#   long_a = a
#   long_b = c
# elsif c > a && c > b
#   long = c
#   long_a = b
#   long_b = a
# end
# 
# if long
#   puts "Треугольник прямоугольный!" if long**2 == long_a**2 * long_b**2
# end
# 
# if a == b && a == c
#   puts "Треугольник равносторонний"
# elsif a == b || a == c || b == c
#   puts "Треугольник равнобедренный"
# else
#   puts "Видимо обычный треугольник..."
# end