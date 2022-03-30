class RailwayStation

  attr_reader :name_station

  attr_reader :trains

  def initialize(name_station)
    @name_station = name_station
    @trains = []
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

class Train

  attr_accessor :type, :count_carriage

  def initialize(type, count_carriage = 0)
    @type = type
    @count_carriage = count_carriage
  end

end