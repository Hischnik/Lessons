# Методы класса и МОДУЛИ
class Car_3
  # Чтобы примешать модуль:
  include NameModule # Включает методы из модуля как методы экземпляра
  extend NameModule2 # А тут как методы класса
  # в самих модулях нет явного выделения метода класса и инстанц

  @@instances = 0

  def self.description
    # Это метод класса
  end

  # ИЛИ можно много методов создать

  class << self
    def def_1
    end

    def def_2
    end
    # Это все будут методы класса...
  end

  def initialize # т.е. при создании экземпляра класса будет подсчет
    @@instances += 1 # т.е. при вызове .new
    # Что бы вызвать метод класса внутри инстанц метода:
    self.class.debug "Vot tak"
  end

  # Что бы посмотреть нужен метод КЛАССА
  def self.instances
    @@instances
  end

  # например метод класса для Debug
  def self.debug(log)
    puts "!!! DEBUG: #{log} !!!"
  end
  # Далее прям в классе можно его вызывать
  debug "Start"

  debug "Finish"

end

# Пространство имен
module Admin
  class Car
    # Реализация класса
  end
end

# Более короткая запись
class Admin::Car
  # Реализация класса
end

# Что бы создать этот класс нужно сначала обратиться к пространству имен
Admin::Car.new
# Это будут разные классы...

# Посмотреть все методы:
Math.methods


# Смешанный модуль! где и методы класса и инстанц методы

# Подключаться будут следующим образом:
extend Debugger::ClassMethods
include Debugger::InstanceMethods

# Но можно подключить в самом модуле для этого в модуле self.included(base)

module Debugger

  def self.included(base)# тогда его можно подключать без extend а через include
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods
    def debug(log) # без self
      puts "!!! DEBUG: #{log} !!!"
    end
  end

  module InstanceMethods
    def debug(log)
      self.class.debug(log)
    end

    def print_class
      puts self.class
    end
  end
end

