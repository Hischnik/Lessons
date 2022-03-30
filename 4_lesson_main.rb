require_relative "4_lesson"
require_relative "4_lesson_class_1"

car = Car_2.new
car.start_engine
puts "Текущие обороты: #{car.current_rpm}"

truck = Truck_2.new
truck.start_engine
puts "Текущие обороты: #{truck.current_rpm}"

# Тест