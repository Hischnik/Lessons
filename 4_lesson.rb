class Car_2
  attr_reader :current_rpm

  def initialize
    @current_rpm = 0
  end

  def start_engine
    start_engine! if engine_stopped?
  end
  
  def engine_stopped?
    current_rpm.zero?
  end

  # private #не доступны в дочерних классах...
  protected

  attr_writer :current_rpm

  # INITIAL_RPM = 700 #константа, ее не получится переопределить в дочернем классе...
  # поэтому сделаем через метод, который будет приватным
  def initial_rpm
    700
  end

  def start_engine!
    @current_rpm = initial_rpm #т.е. получаем данные из одноименного метода.
  end

end