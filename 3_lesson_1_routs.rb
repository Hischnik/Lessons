class Route

attr_writer :count_station

  def initialize
    @rout = {}
    @count_station = 0
  end

  def add_station(railway_station)
    @count_station += 1
    @rout[railway_station] = @count_station
  end

  def delete_station(railway_station)
    @count_station -= 1
    @rout.delete(railway_station)
  end

  def show_station
    @rout.each do |station, numb|
      puts "#{numb} - #{station.name_station}"
    end
  end

end