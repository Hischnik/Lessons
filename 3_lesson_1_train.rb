class Train

  require_relative "3_lesson_moduls" # т.е. сначала подгружаем фаил с модулем

  include DopResurces # а потом подгружаем сам модуль

  attr_accessor :type, :speed, :name_train
  attr_reader :count_carriage, :train_rout

  REG = /^\w{3}(-)?\w{2}$/i

  def initialize(name_train, type, count_carriage = 0)
    @type = type
    @count_carriage = count_carriage
    @speed = 0
    @name_train = name_train
    validate!
  end

  def valid?
    validate!
  rescue
    false
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

  def validate!
    pop = 0
    if name_train !~ REG
      pop += 1
      puts "Не верное имя, введите верное(3 символа, возможен дефиз, 2 символа):"
      @name_train = gets.chomp
      # retry if pop < 3
    end
    raise "Не верное имя - #{name_train}" if name_train !~ REG
    true
  end
  attr_writer :count_carriage

end

# # вообще их нужно в отдельный фаил, но я не буду =)
# class TrainPass < Train

# end

# class TrainGruz < Train

# end