class RailwayStation

  attr_reader :name_station

  attr_reader :trains

  require_relative "3_lesson_moduls" # т.е. сначала подгружаем фаил с модулем а потом
  include DopResurces # подгружаем сам модуль

  @@all_station = []

  def initialize(name_station)
    @name_station = name_station
    @trains = []
    @@all_station << self # т.е. запихнули сам экземпляр класса в переменную класса, в данном случае в массив
    self.class.add_count_instance
  end

  def self.show_all_station
    # puts @@all_station.inspect # это просто выведет массив экземпляров
    # а выведем ка все имена =)
    @@all_station.each do |station|
      puts "Станция: #{station.name_station}"
    end
  end

  def self.find_station(numb)
    @@all_station[numb-1]
  end

  def add_train(train)
    @trains << train
  end

  def show_trains
    trains.each do |train|
      puts "Тип: #{train.type}, кол-во вагонов: #{train.count_carriage}"
    end
  end

  def show_trains_type
    gruz = 0
    pass = 0
    arr_gruz = []
    arr_pass = []
    trains.each do |train|
      if train.type == "Gruz"
        arr_gruz << train
        gruz += 1
      elsif train.type == "Pass"
        arr_pass << train
        pass += 1
      end
    end
    puts "На станции #{pass} пассажирский(-их) поезд(-ов, -а) и #{gruz} грузовой(-ых)"
    puts "Пассажирские:"
    puts arr_pass
    puts "Грузовые:"
    puts arr_gruz
  end

  def go_train(train)
    @trains.delete(train)
  end

end