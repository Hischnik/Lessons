# МАССИВЫ
# arr = [1,2,3,4,5]
# arr[0] = "str" - изменить
# puts arr[2] / можно первый с конца arr[-1]
# arr.any? - есть ли там что-то .size .lenght
# arr.push(87) || arr << 99 - добавить
# arr.delete("str") - по значению
# arr.delete_at(1) - по расположению
# arr.max / arr.sort
# arr.include?(7) - есть ли в массиве 7


# ИНТЕРВАЛ
# (1..5) / ("a".."z")
# (10..20).to_a


# ХЭШ
# hash = {a: 1, b: 2} - новый если символы
# hash = {:a => 1, :b => 2} - старый
# hash[:a] - обращение || ["str"]
# hash["key"] = value #добавить в hash
# months = { "январь" => 31, "февраль" => 28 }
# hash.keys || hash.values 
# может быть хэш внутри хэша тогда hash[77][:a]
# hash.to_a - хэш в массив получим массив массивов


# ЦИКЛЫ
# for value in enumerable do
#   puts "111"
# end
# 
# while value < 5 do #пока меньше 5
#   puts "111"
# end
# 
# until value > 5 do #инверсия while
#   puts "111"
# end
# 
# arr.each do |single| #или можно range - ("a".."z")
#   puts single
# end
# 
# ("a".."z").each { |l| puts l }
# 
# hash.each do |key, value|
#   puts ""
# end
# 
# arr.map { |i| i+2 } #изменить массив в цикле


# Задание 1
# Сделать хеш, содеращий месяцы и количество дней в месяце. В цикле выводить те месяцы, у которых количество дней ровно 30
# months = { "Январь" => 31, "Февраль" => 28, "Март" => 31, "Апрель" => 30, "Май" => 31, "Июнь" => 30, "Июль" => 31, "Август" => 31, "Сентябрь" => 30, "Октябрь" => 31, "Ноябрь" => 30, "Декабрь" => 31 }
# 
# months.each do |key, value|
#   puts "#{key}" if value == 30
# end

# Задание 2
# Заполнить массив числами от 10 до 100 с шагом 5
# arr =[]
# 
# a = 5
# 
# while a < 100 do
#   arr << a += 5
# end
# 
# puts arr

# Задание 2
# Заполнить массив числами от 10 до 100 с шагом 5
# arr = (10..100).step(5).to_a
# puts arr 

# Задание 4
# Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1).
# alphabet = "абвгдеёжзийклмнопрстуфхцчшщъыьэюя"
# vowels = "аеёиоуыэюя"
# 
# vowels_hash = {}
# 
# vowels.each_char do |vowel|
#   vowels_hash[vowel] = alphabet.index(vowel) + 1
# end
# 
# puts vowels_hash
