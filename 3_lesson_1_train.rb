class Train

  require_relative "3_lesson_moduls" # т.е. сначала подгружаем фаил с модулем

  include DopResurces # а потом подгружаем сам модуль

  attr_accessor :type, :speed
  attr_reader :count_carriage, :train_rout

  def initialize(type, count_carriage = 0)
    @type = type
    @count_carriage = count_carriage
    @speed = 0
  end

  def stop
    @speed = 0
  end

  def attach_carriag
    @count_carriage += 1
  end

  def unhook_carriage
    @count_carriage -= 1
  end

  def add_rout(route)
    @train_rout = route
  end

  protected

  attr_writer :count_carriage

end

# # вообще их нужно в отдельный фаил, но я не буду =)
# class TrainPass < Train

# end

# class TrainGruz < Train

# end