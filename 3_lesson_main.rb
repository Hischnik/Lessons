require_relative "3_lesson_1_railway_station"
require_relative "3_lesson_1_routs"
require_relative "3_lesson_1_train"

str = ""
stations = []
trains = []

while str != "stop" do
  puts "1 - Создать станцию\n" + "2 - Показать список станций\n" + "3 - Создать поезд\n" + "4 - Показать список поездов"
  puts "5 - Управление поездами"
  puts "stop - Остановить программу\n" + "Введите команду:"
  str = gets.chomp 

  if str == "1"

    puts "Создание станции\n" + "Введите название станции:"
    stations << RailwayStation.new(gets.chomp)

  elsif str == "2"

    stations.each do |station|
      puts station.name_station
    end

  elsif str == "3"

    puts "Создание поезда\n" + "Введите название поезда:"
    name = gets.chomp
    puts "Введите тип поезда:"
    type = gets.chomp
    puts "Сколько вагонов?"
    count_carriage = gets.chomp.to_i
    trains << Train.new(name, type,count_carriage)

  elsif str == "4"

    trains.each do |train|
      puts "#{train.name_train} - #{train.type}"
    end

  elsif str == "5"

    while str != "back" do

      numb = 0
      puts "Какой поезд?"

      trains.each do |train|
        numb += 1
        puts "#{numb} - #{train.name_train} #{train.type} кол-во вагонов: #{train.count_carriage}"
      end

      puts "Введите номер поезда:"
      train = trains[gets.chomp.to_i - 1]

      puts "1 - Добавить вагон\n" + "2 - Убрать вагон\n" + "3 - Отправить на станцию\n" + "back - назад"
      str = gets.chomp

      if str == "1"

        train.attach_carriag

      elsif str == "2"

        train.unhook_carriage

      elsif str == "3"

        numb = 0
        puts "На какую станцию:"

        stations.each do |station|
          numb += 1
          puts "#{numb} - #{station.name_station}"
        end

        puts "Введите номер станции:"
        station = stations[gets.chomp.to_i - 1]
        station.add_train(train)
        station.show_trains_type

      end
    end
  end
end